# Adjust the path if needed
$list = Get-Content "gameserver_th_580.05_rel.files.txt"

foreach ($line in $list) {
    $path = "." + $line
    $dir = Split-Path $path -Parent
    if (!(Test-Path $dir)) {
        New-Item -ItemType Directory -Path $dir -Force | Out-Null
    }
    if (!(Test-Path $path)) {
        New-Item -ItemType File -Path $path | Out-Null
        Write-Output "Created $path"
    } else {
        Write-Output "File $path already exists"
    }
}