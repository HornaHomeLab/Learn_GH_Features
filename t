paths=$(echo $json_string | jq -r '.[]')
# '["./.github/workflows/Check_version.yaml", "./.github/workflows/Update_asset.yaml", "./README.md"]'
json_string='["./.github/workflows/Check_version.yaml", "./.github/workflows/Update_asset.yaml", "./README.md"]'

paths=$(echo $json_string | jq -r '.[]')
archive_name="archive.tar.gz"
tar -czf $archive_name $paths

tar -czf $archive_name $(echo "$paths" | tr '\n' '\n \')