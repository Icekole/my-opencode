# Figma 组件库结构规范
## 教育后台设计系统

> 版本：1.0  
> 创建日期：2026-03-25  
> 基于：Arco Design Token 系统

---

## 目录

1. [文件结构](#一文件结构)
2. [Variables 变量系统](#二variables-变量系统)
3. [组件层级架构](#三组件层级架构)
4. [Variant 命名规范](#四variant-命名规范)
5. [Auto Layout 规范](#五auto-layout-规范)
6. [核心组件详解](#六核心组件详解)
7. [Design Token 同步](#七design-token-同步)

---

## 一、文件结构

### 1.1 Figma 文件组织

```
📁 Education Design System
├── 📄 Cover (封面页)
├── 📄 Foundation / 基础
│   ├── Colors / 色彩
│   ├── Typography / 字体
│   ├── Icons / 图标
│   ├── Grids / 网格
│   └── Effects / 效果
├── 📄 Components / 组件
│   ├── Buttons / 按钮
│   ├── Forms / 表单
│   │   ├── Input / 输入框
│   │   ├── Select / 选择器
│   │   ├── Checkbox / 复选框
│   │   ├── Radio / 单选框
│   │   └── Switch / 开关
│   ├── Navigation / 导航
│   │   ├── Menu / 菜单
│   │   ├── Tabs / 标签页
│   │   ├── Breadcrumb / 面包屑
│   │   └── Pagination / 分页
│   ├── Data Display / 数据展示
│   │   ├── Table / 表格
│   │   ├── Card / 卡片
│   │   ├── List / 列表
│   │   └── Avatar / 头像
│   ├── Feedback / 反馈
│   │   ├── Modal / 弹窗
│   │   ├── Drawer / 抽屉
│   │   ├── Toast / 提示
│   │   ├── Alert / 警告提示
│   │   └── Spin / 加载
│   └── Layout / 布局
│       ├── Header / 顶部导航
│       ├── Sider / 侧边栏
│       └── Container / 容器
├── 📄 Patterns / 模式
│   ├── Forms / 表单模式
│   ├── Tables / 表格模式
│   └── Dashboards / 仪表盘
└── 📄 Documentation / 文档
    ├── Guidelines / 使用指南
    └── Changelog / 更新日志
```

### 1.2 Page 命名规范

| Page 名称 | 前缀 | 说明 |
|-----------|------|------|
| `📘 Cover` | 📘 | 文件封面，显示系统预览 |
| `🎨 Foundation` | 🎨 | 基础样式、色彩、字体 |
| `🧩 Components` | 🧩 | 可复用组件库 |
| `📐 Patterns` | 📐 | 页面模板和组合模式 |
| `📚 Documentation` | 📚 | 使用文档和更新日志 |

---

## 二、Variables 变量系统

### 2.1 变量集合结构

基于现有的 `Light.tokens.json` 和 `Dark.tokens.json`，在 Figma 中创建以下变量集合：

```
📊 Variables Panel
├── Color / 色彩
│   ├── Brand / 品牌色
│   │   ├── brand-1 ~ brand-10
│   │   └── brand-primary (alias → brand-6)
│   ├── Functional / 功能色
│   │   ├── success (alias → green-6)
│   │   ├── warning (alias → orange-6)
│   │   ├── error (alias → red-6)
│   │   └── info (alias → brand-6)
│   ├── Neutral / 中性色
│   │   ├── text-primary
│   │   ├── text-secondary
│   │   ├── text-tertiary
│   │   ├── border
│   │   ├── bg
│   │   └── bg-container
│   └── Palette / 完整色板
│       ├── red-1 ~ red-10
│       ├── orange-1 ~ orange-10
│       ├── green-1 ~ green-10
│       └── ... (所有色系)
├── Typography / 字体
│   ├── Font Family
│   │   ├── font-family-base
│   │   └── font-family-code
│   ├── Font Size
│   │   ├── font-size-xs (12px)
│   │   ├── font-size-sm (12px)
│   │   ├── font-size-base (14px)
│   │   ├── font-size-lg (16px)
│   │   ├── font-size-xl (20px)
│   │   ├── font-size-2xl (24px)
│   │   ├── font-size-3xl (30px)
│   │   └── font-size-4xl (38px)
│   ├── Line Height
│   │   ├── line-height-xs (18px)
│   │   ├── line-height-sm (20px)
│   │   ├── line-height-base (22px)
│   │   └── ...
│   └── Font Weight
│       ├── font-weight-regular (400)
│       ├── font-weight-medium (500)
│       ├── font-weight-semibold (600)
│       └── font-weight-bold (700)
├── Spacing / 间距
│   ├── spacing-xs (4px)
│   ├── spacing-sm (8px)
│   ├── spacing-md (16px)
│   ├── spacing-lg (24px)
│   ├── spacing-xl (32px)
│   ├── spacing-2xl (48px)
│   └── spacing-3xl (64px)
├── Radius / 圆角
│   ├── radius-sm (4px)
│   ├── radius-md (6px)
│   ├── radius-lg (8px)
│   ├── radius-xl (12px)
│   └── radius-full (9999px)
├── Shadow / 阴影
│   ├── shadow-sm
│   ├── shadow-md
│   ├── shadow-lg
│   └── shadow-xl
└── Breakpoints / 断点
    ├── bp-xs (<576px)
    ├── bp-sm (≥576px)
    ├── bp-md (≥768px)
    ├── bp-lg (≥992px)
    ├── bp-xl (≥1200px)
    └── bp-xxl (≥1600px)
```

### 2.2 变量命名规范

| 类型 | 命名格式 | 示例 |
|------|---------|------|
| 色彩 | `kebab-case` | `brand-primary`, `text-primary` |
| 字体 | `kebab-case` | `font-size-base`, `font-weight-bold` |
| 间距 | `spacing-` 前缀 | `spacing-sm`, `spacing-md` |
| 圆角 | `radius-` 前缀 | `radius-md`, `radius-lg` |
| 阴影 | `shadow-` 前缀 | `shadow-sm`, `shadow-md` |

### 2.3 变量模式 (Mode)

创建两个 Mode：
- **Light** - 亮色模式 (对应 Light.tokens.json)
- **Dark** - 暗色模式 (对应 Dark.tokens.json)

---

## 三、组件层级架构

### 3.1 组件层级关系

```
🏗️ Component Hierarchy

原子组件 (Atoms)
├── Button / 按钮
├── Icon / 图标
├── Input / 输入框
├── Checkbox / 复选框
├── Radio / 单选框
├── Switch / 开关
├── Tag / 标签
├── Avatar / 头像
└── Badge / 徽章

分子组件 (Molecules)
├── FormItem / 表单项
├── SearchBox / 搜索框
├── MenuItem / 菜单项
├── Card / 卡片
├── Alert / 警告提示
├── Toast / 提示消息
└── BreadcrumbItem / 面包屑项

有机体组件 (Organisms)
├── Form / 表单
├── Table / 表格
├── Modal / 弹窗
├── Drawer / 抽屉
├── Header / 顶部导航
├── Sider / 侧边栏
└── Pagination / 分页器

模板 (Templates)
├── PageLayout / 页面布局
├── DashboardLayout / 仪表盘布局
├── FormPage / 表单页
└── ListPage / 列表页
```

### 3.2 组件命名规范

| 层级 | 命名格式 | 示例 |
|------|---------|------|
| 原子组件 | 单个词 | `Button`, `Input`, `Icon` |
| 分子组件 | 组合词 | `FormItem`, `SearchBox`, `MenuItem` |
| 有机体组件 | 功能词 | `Table`, `Modal`, `Pagination` |
| 模板 | `Page` 后缀 | `FormPage`, `ListPage` |

### 3.3 组件状态规范

每个交互组件必须包含以下状态：

| 状态 | 变量名 | 说明 |
|------|--------|------|
| Default | - | 默认状态 |
| Hover | `:hover` | 鼠标悬停 |
| Active | `:active` | 点击激活 |
| Focus | `:focus` | 键盘聚焦 |
| Disabled | `disabled` | 禁用状态 |
| Loading | `loading` | 加载中 |

---

## 四、Variant 命名规范

### 4.1 Variant 属性命名

使用 Figma 的 Variant 功能，每个组件的属性命名遵循以下规范：

```
属性名 = 属性值
```

### 4.2 Button 组件 Variant 示例

```
🔘 Button
├── Type = Primary | Default | Link | Danger
├── Size = Large | Default | Small
├── State = Default | Hover | Active | Disabled | Loading
└── Icon = WithIcon | WithoutIcon
```

**完整 Variant 命名:**
```
Button/Type=Primary/Size=Default/State=Default/Icon=WithoutIcon
```

### 4.3 Input 组件 Variant 示例

```
⌨️ Input
├── Size = Large | Default | Small
├── State = Default | Hover | Focus | Disabled | Error
├── HasPrefix = Yes | No
├── HasSuffix = Yes | No
└── HasAddon = Yes | No
```

### 4.4 通用属性值规范

| 属性 | 推荐值 | 说明 |
|------|--------|------|
| Size | `Large`, `Default`, `Small` | 尺寸 |
| State | `Default`, `Hover`, `Active`, `Disabled` | 状态 |
| Type | `Primary`, `Default`, `Link`, `Danger` | 类型 |
| Position | `Top`, `Right`, `Bottom`, `Left` | 位置 |
| Alignment | `Left`, `Center`, `Right` | 对齐 |

---

## 五、Auto Layout 规范

### 5.1 基础容器规范

```
📦 Container Settings

Frame 设置:
├── Layout: Auto Layout
├── Direction: Horizontal / Vertical
├── Alignment: Center / Space Between
├── Padding: 使用 spacing 变量
├── Gap: 使用 spacing 变量
└── Resizing: Hug / Fixed / Fill
```

### 5.2 常用 Auto Layout 模式

#### 垂直堆叠 (Vertical Stack)

```
📚 Vertical Stack
├── Direction: Vertical
├── Alignment: Stretch
├── Gap: 16px (spacing-md)
├── Padding: 0
└── Resizing: Hug Contents
```

#### 水平排列 (Horizontal Row)

```
➡️ Horizontal Row
├── Direction: Horizontal
├── Alignment: Center
├── Gap: 16px (spacing-md)
├── Padding: 0
└── Resizing: Hug Contents
```

#### 两端对齐 (Space Between)

```
↔️ Space Between
├── Direction: Horizontal
├── Alignment: Center
├── Gap: 16px
├── Padding: 0
└── Resizing: Fill Container
```

### 5.3 组件内边距规范

| 组件类型 | Padding | Gap |
|----------|---------|-----|
| Button | 8px 16px | 6px |
| Input | 8px 12px | 8px |
| Card | 24px | 16px |
| Modal | 24px | 20px |
| FormItem | 16px 0 | 8px |
| Menu Item | 12px 16px | 8px |

### 5.4 响应式约束

```
📐 Responsive Constraints

Desktop (≥1200px):
├── Container Max Width: 1200px
├── Side Margin: Auto (centered)
└── Grid Columns: 12

Tablet (≥768px):
├── Container Max Width: 100%
├── Side Margin: 24px
└── Grid Columns: 8

Mobile (<768px):
├── Container Max Width: 100%
├── Side Margin: 16px
└── Grid Columns: 4
```

---

## 六、核心组件详解

### 6.1 Button 按钮

**组件结构:**

```
🔘 Button
├── Frame (Auto Layout: Horizontal)
│   ├── Icon (Optional, 16×16)
│   └── Label (Text)
└── Properties
    ├── Fill: {type}
    ├── Stroke: {type}
    ├── Corner Radius: radius-md (6px)
    └── Padding: 8px 16px
```

**Variant 矩阵:**

| Type | Size | State | Icon |
|------|------|-------|------|
| Primary | Large | Default | WithIcon |
| Primary | Default | Hover | WithoutIcon |
| Primary | Small | Active | - |
| Default | - | Disabled | - |
| Link | - | - | - |
| Danger | - | - | - |

**总计:** 4 × 3 × 5 × 2 = **120 个 Variant**

### 6.2 Input 输入框

**组件结构:**

```
⌨️ Input
├── Frame (Auto Layout: Horizontal)
│   ├── Prefix (Optional)
│   ├── Input Field (Fill Container)
│   │   └── Placeholder Text
│   └── Suffix (Optional)
├── Label (Optional, above or left)
└── Help Text / Error Text (Optional, below)
└── Properties
    ├── Height: 32px (Default)
    ├── Corner Radius: radius-md (6px)
    ├── Stroke: border
    └── Padding: 8px 12px
```

**Variant 矩阵:**

| Size | State | Prefix | Suffix |
|------|-------|--------|--------|
| Large | Default | Yes | Yes |
| Default | Hover | No | No |
| Small | Focus | - | - |
| - | Disabled | - | - |
| - | Error | - | - |

**总计:** 3 × 5 × 2 × 2 = **60 个 Variant**

### 6.3 Table 表格

**组件结构:**

```
📊 Table
├── Header
│   └── TableRow (Header Cells)
├── Body
│   └── TableRow (Data Cells) × N
└── Footer (Optional)
    └── Pagination

📋 TableRow
├── TableCell × N
└── Properties
    ├── Height: 54px (Default)
    ├── Stroke: border (bottom)
    └── Padding: 12px 16px
```

**密度 Variant:**

| Density | Row Height | Padding |
|---------|------------|---------|
| Comfortable | 64px | 16px |
| Default | 54px | 12px |
| Compact | 44px | 8px |

### 6.4 Modal 弹窗

**组件结构:**

```
🪟 Modal
├── Overlay (Full Screen)
└── Modal Container (Auto Layout: Vertical)
    ├── Header (Auto Layout: Horizontal)
    │   ├── Title
    │   └── Close Button (×)
    ├── Body (Fill Container)
    │   └── Content
    └── Footer (Auto Layout: Horizontal, Right)
        ├── Cancel Button
        └── Confirm Button
```

**尺寸 Variant:**

| Size | Width | Usage |
|------|-------|-------|
| Small | 400px | 确认对话框 |
| Default | 520px | 标准弹窗 |
| Large | 700px | 复杂表单 |
| Full | 90% | 完整编辑 |

### 6.5 Form 表单

**组件结构:**

```
📝 Form
├── FormItem × N
│   ├── Label
│   ├── Input/Select/Checkbox
│   └── Help Text / Error Text
└── Actions (Auto Layout: Horizontal)
    ├── Submit Button
    └── Cancel Button
```

**布局 Variant:**

| Layout | Label Align | Usage |
|--------|-------------|-------|
| Vertical | Top | 移动端、复杂表单 |
| Horizontal | Right | 桌面端、标准表单 |
| Inline | Left | 筛选区、紧凑表单 |

---

## 七、Design Token 同步

### 7.1 从 Figma 导出 Token

**步骤:**

1. 在 Figma 中完成 Variables 设置
2. 使用插件导出 (推荐: **Tokens Studio for Figma**)
3. 导出格式选择: **Design Tokens JSON**
4. 生成文件:
   - `Light.tokens.json`
   - `Dark.tokens.json`

### 7.2 Token 文件结构

```json
{
  "Arco": {
    "Color": {
      "Brand": {
        "6": {
          "$type": "color",
          "$value": {
            "colorSpace": "srgb",
            "components": [0, 0.6627, 0.6],
            "alpha": 1,
            "hex": "#02A999"
          },
          "$extensions": {
            "com.figma.variableId": "VariableID:xxx",
            "com.figma.scopes": ["ALL_SCOPES"]
          }
        }
      }
    }
  }
}
```

### 7.3 Token 同步流程

```
┌─────────────┐     ┌─────────────┐     ┌─────────────┐
│   Figma     │────▶│   Export    │────▶│   GitHub    │
│  Variables  │     │  (Plugin)   │     │   Repo      │
└─────────────┘     └─────────────┘     └─────────────┘
                           │
                           ▼
                    ┌─────────────┐
                    │   CSS/TS    │
                    │   Generate  │
                    └─────────────┘
                           │
                           ▼
                    ┌─────────────┐
                    │   Project   │
                    │   Import    │
                    └─────────────┘
```

### 7.4 自动化同步 (推荐)

使用 **Style Dictionary** 或 **Tokens Studio** 实现自动化:

```bash
# 安装 Style Dictionary
npm install -g style-dictionary

# 配置 style-dictionary.config.js
module.exports = {
  source: ['tokens/**/*.json'],
  platforms: {
    css: {
      transformGroup: 'css',
      buildPath: 'dist/css/',
      files: [{
        destination: 'variables.css',
        format: 'css/variables'
      }]
    },
    js: {
      transformGroup: 'js',
      buildPath: 'dist/js/',
      files: [{
        destination: 'tokens.js',
        format: 'javascript/esm'
      }]
    }
  }
};

# 构建
style-dictionary build
```

### 7.5 版本管理

| 阶段 | 操作 | 频率 |
|------|------|------|
| 设计更新 | 更新 Figma Variables | 随时 |
| Token 导出 | 导出 JSON 文件 | 每次设计更新后 |
| 代码生成 | 生成 CSS/TS 文件 | CI/CD 自动 |
| 版本发布 | Git Tag + Changelog | 每周/每版本 |

---

## 附录

### A. Figma 插件推荐

| 插件 | 用途 | 链接 |
|------|------|------|
| Tokens Studio for Figma | Token 管理和导出 | [官网](https://tokens.studio/) |
| Style Dictionary | 多平台 Token 转换 | [GitHub](https://github.com/amzn/style-dictionary) |
| Auto Layout | Auto Layout 辅助 | Figma Community |
| Variant Manager | Variant 批量管理 | Figma Community |

### B. 检查清单

在发布组件库前，检查以下项目:

**Variables:**
- [ ] 所有色彩变量已创建 (Light + Dark Mode)
- [ ] 字体变量完整 (Size, Weight, Line Height)
- [ ] 间距变量使用 8px 网格
- [ ] 圆角变量统一命名
- [ ] 阴影变量分层级

**Components:**
- [ ] 所有组件使用 Auto Layout
- [ ] Variant 命名符合规范
- [ ] 状态完整 (Default, Hover, Active, Disabled)
- [ ] 响应式约束设置正确
- [ ] 组件描述完整

**Documentation:**
- [ ] 封面页设计完成
- [ ] 使用指南文档完整
- [ ] 更新日志记录
- [ ] 示例页面展示

### C. 版本历史

| 版本 | 日期 | 更新内容 |
|------|------|---------|
| 1.0 | 2026-03-25 | 初始版本，基于 Arco Token 系统 |

---

*本文档与 spec.md 配套使用，共同构成教育后台设计系统完整规范。*
