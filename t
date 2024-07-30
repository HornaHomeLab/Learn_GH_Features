paths=$(echo $json_string | jq -r '.[]')
# '["./.github/workflows/Check_version.yaml", "./.github/workflows/Update_asset.yaml", "./README.md"]'
json_string='["./.github/workflows/Check_version.yaml", "./.github/workflows/Update_asset.yaml", "./README.md"]'

paths=$(echo $json_string | jq -r '.[]')
archive_name="archive.tar.gz"
tar -czf $archive_name $paths

tar -czf $archive_name $(echo "$paths" | tr '\n' '\n \')


# GitHub CLI api
# https://cli.github.com/manual/gh_api

gh api \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  /repos/HornaHomeLab/Learn_GH_Features/releases/167708270/assets  | jq '.[0].id'


# GitHub CLI api
# https://cli.github.com/manual/gh_api

gh api \
  --method DELETE \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  /repos/HornaHomeLab/Learn_GH_Features/releases/assets/ASSET_ID
