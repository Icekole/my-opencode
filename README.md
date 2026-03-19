# OpenCode 配置仓库

我的 OpenCode 个性化配置，包含 Skills、智能体和全局规则。

## 目录结构

```
├── README.md           # 本文件
├── AGENTS.md           # 全局规则（始终使用中文回复）
├── install.sh          # 快速安装脚本
├── install.ps1         # Windows 快速安装脚本
├── skills/             # Skills 目录
│   └── ui-ux-pro-max/ # UI/UX 设计技能包
└── agents/             # 智能体目录
    ├── 交互设计专家.md  # 交互体验专家
    ├── 产品架构师.md    # 产品架构师
    └── 视觉设计专家.md  # 视觉设计专家
```

## 包含内容

### Skills
- **ui-ux-pro-max**: UI/UX 设计智能包，包含 50+ 设计风格、161 配色方案、57 种字体搭配

### 智能体 (Agents)
- **交互设计专家**: 专注于认知负荷优化、尼尔森启发式评估、无障碍设计
- **产品架构师**: 专注于 B 端产品设计、状态机建模、PRD 文档撰写
- **视觉设计专家**: 专注于 UI 审核、视觉一致性、无障碍合规

## 快速安装

### macOS / Linux

```bash
curl -fsSL https://raw.githubusercontent.com/YOUR_USERNAME/opencode-config/main/install.sh | bash
```

或手动安装：

```bash
# 克隆仓库
git clone https://github.com/YOUR_USERNAME/opencode-config.git ~/opencode-config

# 安装 Skills
mkdir -p ~/.claude/skills
cp -r ~/opencode-config/skills/* ~/.claude/skills/

# 安装智能体
mkdir -p ~/.config/opencode/agents
cp -r ~/opencode-config/agents/* ~/.config/opencode/agents/

# 安装全局规则
cp ~/opencode-config/AGENTS.md ~/.config/opencode/
```

### Windows

```powershell
# 克隆仓库
git clone https://github.com/YOUR_USERNAME/opencode-config.git $env:USERPROFILE\opencode-config

# 运行安装脚本
powershell -ExecutionPolicy Bypass -File $env:USERPROFILE\opencode-config\install.ps1
```

## 使用方法

在 OpenCode 中使用 `@` 提及智能体：

```
@交互设计专家 请帮我评估这个用户注册流程
@产品架构师 帮我设计一个订单审批状态机
@视觉设计专家 检查这个登录页面的配色
```

## 自定义

可以随意修改这些配置以适应你的需求。修改后提交到你的 GitHub 仓库，即可在任何设备上同步使用。

## License

MIT
