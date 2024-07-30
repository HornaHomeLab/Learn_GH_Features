# GitHub CLI api
# https://cli.github.com/manual/gh_api

gh api \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  /repos/HornaHomeLab/Learn_GH_Features/releases/tags/11.11.11 | jq .prerelease