# Install product-market-fit skill for Claude Code

$SkillName = "product-market-fit"
$SkillSrc = Join-Path $PSScriptRoot "skills\product-market-fit"
$Target = "$env:USERPROFILE\.claude\skills\$SkillName"

if (-not (Test-Path $SkillSrc)) {
    Write-Error "skills\product-market-fit not found. Run this script from the repo root."
    exit 1
}

Write-Output "Installing $SkillName..."

New-Item -ItemType Directory -Force $Target | Out-Null
Copy-Item -Recurse -Force "$SkillSrc\*" $Target

Write-Output ""
Write-Output "Done. $SkillName installed to $Target"
Write-Output ""
Write-Output "Restart Claude Code or run /reload-plugins, then use: /$SkillName"
