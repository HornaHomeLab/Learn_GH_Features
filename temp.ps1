$env:BASE = "24.42"
$PatchNum = 0
do {
    $VersionToCheck = "$($env:BASE).$PatchNum"
    try {
        $null = Invoke-WebRequest -Headers @{
            "Accept"               = "application/vnd.github+json"
            "Authorization"        = "Bearer $(gh auth token)"
            "X-GitHub-Api-Version" = "2022-11-28"
        } -Uri "https://api.github.com/repos/HornaHomeLab/Learn_GH_Features/git/ref/tags/$VersionToCheck"
    }
    catch {
        if ($_.Exception.StatusCode -eq "404") {
            break
        }
        else {
            throw $_.Exception.Message
        }
    }
    $PatchNum++
} while ($PatchNum -le 1000) 
Write-Host "$VersionToCheck"
$env:VERSION = $VersionToCheck