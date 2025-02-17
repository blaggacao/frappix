{
  pname = "wiki";
  version = "20250217.073401";
  meta = {
    url = "https://github.com/frappe/wiki/commit/d0561fb7f662fe9edb78774188023dda9549e6ac";
    description = "Sources for wiki (20250217.073401)";
  };
  src = builtins.fetchTree {
    type = "github";
    owner = "frappe"; repo = "wiki";
    narHash = "sha256-bALdqzFsBrZgjjc+pSmzpeCC036KcqEWoVxiQFppymM=";
    rev = "d0561fb7f662fe9edb78774188023dda9549e6ac";
  };
  passthru = builtins.fromJSON ''{}'';
}