# GitHub CLI api
# https://cli.github.com/manual/gh_api

gh api \
  --method DELETE \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  /repos/HornaHomeLab/Learn_GH_Features/git/refs/tags/1.1.0