{
  writers,
  python3Packages,
}:
(writers.writePython3Bin "analyze-prs.py" {
    flakeIgnore = ["E501"];
    libraries = with python3Packages; [
      requests
      tabulate
    ];
  }
  ./analyze-prs.py)
// {meta.description = "Analyze PRs against HEAD";}
