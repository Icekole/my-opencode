#!/bin/bash

# OpenCode 配置安装脚本

set -e

echo "开始安装 OpenCode 配置..."

# 安装 Skills
echo "安装 Skills..."
mkdir -p ~/.claude/skills
cp -r "$(dirname "$0")/skills/"* ~/.claude/skills/
echo "✓ Skills 安装完成"

# 安装智能体
echo "安装智能体..."
mkdir -p ~/.config/opencode/agents
cp -r "$(dirname "$0")/agents/"* ~/.config/opencode/agents/
echo "✓ 智能体安装完成"

# 安装全局规则
echo "安装全局规则..."
cp "$(dirname "$0")/AGENTS.md" ~/.config/opencode/ 2>/dev/null || true
echo "✓ 全局规则安装完成"

echo ""
echo "安装成功！重新启动 OpenCode 即可使用。"
