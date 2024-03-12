import sys
import requests
import netrc
import subprocess
from tabulate import tabulate


def get_github_token():
    try:
        info = netrc.netrc()
        login, _, token = info.authenticators("api.github.com")
        return token
    except (FileNotFoundError, netrc.NetrcParseError):
        print("Error: .netrc file not found or invalid.")
        return None


def get_current_branch_or_tag():
    result = subprocess.run(['git', 'rev-parse', '--abbrev-ref', 'HEAD'], capture_output=True)
    if result.returncode == 0:
        return result.stdout.decode().strip()
    else:
        result = subprocess.run(['git', 'describe', '--tags', '--exact-match'], capture_output=True)
        if result.returncode == 0:
            return result.stdout.decode().strip()
        else:
            return "current checkout"


def check_common_ancestor(commit_sha):
    result = subprocess.run(['git', 'merge-base', '--is-ancestor', commit_sha, 'HEAD'], capture_output=True)
    return result.returncode == 0


def find_backport(repo_name, pr_number, author_username="app/mergify"):
    token = get_github_token()
    base_branch = get_current_branch_or_tag()
    if token:
        headers = {"Authorization": f"token {token}"}
        query = f"""
        query {{
          search(query: "{pr_number} in:title repo:{repo_name} is:pr is:merged base:{base_branch} author:{author_username}", type: ISSUE, first: 100) {{
            edges {{
              node {{
                ... on PullRequest {{
                  number
                  title
                }}
              }}
            }}
          }}
        }}
        """
        response = requests.post('https://api.github.com/graphql', json={'query': query}, headers=headers)
        if response.status_code == 200:
            data = response.json()
            for pr in data['data']['search']['edges']:
                backport_pr_number = pr['node']['number']
                return backport_pr_number
            else:
                return None

        else:
            print(f"Error fetching data. Status code: {response.status_code}")


def export_merged_pr_commits(repo_name, author_username):
    token = get_github_token()
    current_branch_or_tag = get_current_branch_or_tag()
    table_data = []
    if token:
        headers = {"Authorization": f"token {token}"}
        query = f"""
        query {{
          search(query: "repo:{repo_name} is:pr is:merged author:{author_username}", type: ISSUE, first: 100) {{
            edges {{
              node {{
                ... on PullRequest {{
                  headRefOid
                  number
                  title
                  author {{
                    login
                  }}
                  timelineItems(last: 1, itemTypes: MERGED_EVENT) {{
                    nodes {{
                      ... on MergedEvent {{
                        commit {{
                          oid
                        }}
                      }}
                    }}
                  }}
                }}
              }}
            }}
          }}
        }}
        """
        response = requests.post('https://api.github.com/graphql', json={'query': query}, headers=headers)
        if response.status_code == 200:
            data = response.json()
            for pr in data['data']['search']['edges']:
                # head_commit_sha = pr['node']['headRefOid']
                merge_commit_sha = pr['node']['timelineItems']['nodes'][0]['commit']['oid']
                pr_number = pr['node']['number']
                pr_title = pr['node']['title']
                if check_common_ancestor(merge_commit_sha):
                    inclusion_status = f"{current_branch_or_tag}: included"
                elif backport_pr_number := find_backport(repo_name, pr_number):
                    inclusion_status = f"{current_branch_or_tag}: backported via PR-{backport_pr_number}"
                else:
                    inclusion_status = ""
                table_data.append([merge_commit_sha, f"PR-{pr_number}", inclusion_status, pr_title])
                # print(f"{merge_commit_sha}\t {common_ancestor_merge}\t PR-{pr_number} - Author: {author_name} - Title: {pr_title}")
            print(tabulate(table_data, tablefmt="plain"))
        else:
            print(f"Error fetching data. Status code: {response.status_code}")


if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python script.py <repository_name> <author_username>")
    else:
        repo_name = sys.argv[1]
        author_username = sys.argv[2]
        export_merged_pr_commits(repo_name, author_username)
