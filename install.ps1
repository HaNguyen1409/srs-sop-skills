param(
  [string]$Owner = "HaNguyen1409",
  [string]$Dest = (Join-Path $HOME ".claude\skills"),
  [switch]$Latest
)
$ErrorActionPreference = "Stop"
$lock = Get-Content (Join-Path $PSScriptRoot "skills.lock.json") -Raw -Encoding UTF8 | ConvertFrom-Json
New-Item -ItemType Directory -Force $Dest | Out-Null
foreach ($s in $lock.skills) {
  $target = Join-Path $Dest $s.name
  $url = "https://github.com/$Owner/$($s.name).git"
  if (Test-Path (Join-Path $target ".git")) {
    git -C $target fetch --tags --quiet
    if ($Latest) { git -C $target checkout --quiet main; git -C $target pull --quiet }
    else { git -C $target checkout --quiet "v$($s.version)" }
  } elseif ($Latest) { git clone --quiet $url $target }
  else { git clone --quiet --branch "v$($s.version)" $url $target }
  Write-Host ("{0,-36} {1}" -f $s.name, $(if ($Latest) { "main" } else { "v$($s.version)" }))
}
