# OpenCode 配置安装脚本 (Windows)

Write-Host "开始安装 OpenCode 配置..." -ForegroundColor Green

$ConfigDir = Split-Path -Parent $MyInvocation.MyCommand.Path

# 安装 Skills
Write-Host "安装 Skills..." -ForegroundColor Yellow
$SkillsDir = "$env:USERPROFILE\.claude\skills"
if (-not (Test-Path $SkillsDir)) {
    New-Item -ItemType Directory -Path $SkillsDir -Force | Out-Null
}
Copy-Item -Path "$ConfigDir\skills\*" -Destination $SkillsDir -Recurse -Force
Write-Host "✓ Skills 安装完成" -ForegroundColor Green

# 安装智能体
Write-Host "安装智能体..." -ForegroundColor Yellow
$AgentsDir = "$env:USERPROFILE\.config\opencode\agents"
if (-not (Test-Path $AgentsDir)) {
    New-Item -ItemType Directory -Path $AgentsDir -Force | Out-Null
}
Copy-Item -Path "$ConfigDir\agents\*" -Destination $AgentsDir -Recurse -Force
Write-Host "✓ 智能体安装完成" -ForegroundColor Green

# 安装全局规则
Write-Host "安装全局规则..." -ForegroundColor Yellow
$GlobalDir = "$env:USERPROFILE\.config\opencode"
if (Test-Path "$ConfigDir\AGENTS.md") {
    Copy-Item -Path "$ConfigDir\AGENTS.md" -Destination $GlobalDir -Force
}
Write-Host "✓ 全局规则安装完成" -ForegroundColor Green

Write-Host ""
Write-Host "安装成功！重新启动 OpenCode 即可使用。" -ForegroundColor Green
