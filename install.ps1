# Install product-market-fit skill for Claude Code

$SkillName = "product-market-fit"
$Target = "$env:USERPROFILE\.claude\skills\$SkillName"

Write-Output "Installing $SkillName..."

# Create target directory
New-Item -ItemType Directory -Force $Target | Out-Null

# Copy skill files
Copy-Item -Recurse -Force ".\*" $Target

Write-Output ""
Write-Output "Done. $SkillName installed to $Target"
Write-Output ""
Write-Output "Open Claude Code and run: /$SkillName"
