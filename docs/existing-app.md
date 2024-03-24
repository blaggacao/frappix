# Add `./apps/nvfetcher.toml`

This configuration helps you to update your apps regularly.

For each app, there are two configurations:

- How to detect new versions (`src` prefix)
- How to pin a new version (`fetch` prefix)

With GitHub:

```toml
[myapp]
src.github = "owner/repo"
src.use_max_tag = true
src.branch = "version-15" # example for frappe
fetch.github = "owner/repo"

```

With PyPI:

```toml
[myapp]
src.pypi = "name"
src.use_pre_release = false
fetch.pypi = "name"

```

With GitLab:

```toml
[myapp]
src.gitlab = "my/path/to/app"
src.use_max_tag = true
src.branch = "version-15" # example for frappe
fetch.git = "git@gitlab.com:my/path/to/app.git"

```

From local git repo:

```toml
[myapp]
src.git = "/path/to/app"
src.branch = "version-15" # example for frappe
fetch.git = "/path/to/app"

```

Then, run `nvfetcher -o _pins` within the directory of the above TOML file.
