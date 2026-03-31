# 教育后台设计系统规范
## 基于 Ant Design 设计语言

> 版本：1.0  
> 创建日期：2026-03-25  
> 适用场景：企业级教育后台/工具类产品

---

## 目录

1. [设计原则](#一设计原则)
2. [色彩系统](#二色彩系统)
3. [字体系统](#三字体系统)
4. [间距系统](#四间距系统)
5. [圆角规范](#五圆角规范)
6. [阴影与层级](#六阴影与层级)
7. [组件规范](#七组件规范基于-ant-design)
8. [响应式断点](#八响应式断点)
9. [暗色模式切换](#九暗色模式切换)
10. [Auto Layout 规范](#十auto-layout-规范)
11. [无障碍规范](#十一无障碍规范-accessibility)
12. [交付清单](#十二交付清单)

---

## 一、设计原则

### 1. 确定感 (Certainty)
- 清晰的信息层级和导航结构
- 明确的操作反馈和状态提示
- 适合教育行业从业者的专业感

### 2. 高效率 (Efficiency)
- 减少操作步骤，提供批量处理能力
- 合理的默认值和智能填充
- 支持键盘快捷操作

### 3. 可控性 (Control)
- 重要操作提供确认和撤销机制
- 清晰的权限边界提示
- 数据变更可追溯

### 4. 一致性 (Consistency)
- 统一的视觉语言和交互模式
- 遵循 Ant Design 组件规范
- 跨平台体验一致

---

## 二、色彩系统

> 基于 Figma Design Tokens 导出，采用 Arco Design 色彩系统，针对教育行业优化。

### 1. 主色调 (Primary Colors)

| 角色 | 亮色模式 | 暗色模式 | 用途 |
|------|---------|---------|------|
| Primary | `#02A999` (Brand-6) | `#27BAA6` | 主要操作、链接、选中状态 |
| Primary Hover | `#019288` (Brand-7) | `#50CBB7` | 悬停状态 |
| Primary Active | `#017B77` (Brand-8) | `#7EDDCA` | 点击状态 |
| Primary Light | `#02A999` (Brand-6) | `#B3EEE0` | 浅色背景 |

### 2. 功能色 (Functional Colors)

| 类型 | 亮色模式 | 暗色模式 | 用途 |
|------|---------|---------|------|
| Success | `#00B42A` (Green-6) | `#27C346` | 成功状态、完成标识 |
| Warning | `#FF7D00` (Orange-6) | `#FF9626` | 警告提示 |
| Error | `#F53F3F` (Red-6) | `#F54E4E` | 错误状态、危险操作 |
| Info | `#02A999` (Brand-6) | `#27BAA6` | 信息提示 |

### 3. 中性色 (Neutral Colors)

**亮色模式:**

| 层级 | 色值 | 用途 |
|------|------|------|
| 标题文字 | `#1F1F1F` | 主标题、重要文字 |
| 正文文字 | `#595959` | 段落、描述文字 |
| 次要文字 | `#8C8C8C` | 辅助说明、时间戳 |
| 边框 | `#D9D9D9` | 分割线、边框 |
| 背景 | `#F5F5F5` | 页面背景 |
| 容器背景 | `#FFFFFF` | 卡片、内容区 |

**暗色模式:**

| 层级 | 色值 | 用途 |
|------|------|------|
| 标题文字 | `#E5E5E5` | 主标题、重要文字 |
| 正文文字 | `#A6A6A6` | 段落、描述文字 |
| 次要文字 | `#595959` | 辅助说明 |
| 边框 | `#424242` | 分割线、边框 |
| 背景 | `#141414` | 页面背景 |
| 容器背景 | `#1F1F1F` | 卡片、内容区 |

### 4. 完整色阶系统

#### Brand (品牌色 - 青绿)

| 色阶 | 亮色模式 | 暗色模式 | 用途 |
|------|---------|---------|------|
| 1 | `#E8FFF9` | `#004A4D` | 极浅背景 / 极深文字 |
| 2 | `#AEEEDF` | `#016464` | 浅色背景 / 深色文字 |
| 3 | `#79DDC9` | `#087B77` | 背景 / 次要文字 |
| 4 | `#4BCBB6` | `#109289` | 边框 / 正文 |
| 5 | `#24BAA6` | `#1BA99B` | 图标 / 强调 |
| 6 | `#02A999` | `#27BAA6` | **主色** |
| 7 | `#019288` | `#50CBB7` | 悬停 |
| 8 | `#017B77` | `#7EDDCA` | 点击 |
| 9 | `#006464` | `#B3EEE0` | 深色强调 |
| 10 | `#004A4D` | `#EEFFFA` | 最深色 / 最浅色 |

#### Red (红色 - 错误/危险)

| 色阶 | 亮色模式 | 暗色模式 | 用途 |
|------|---------|---------|------|
| 6 | `#F53F3F` | `#F54E4E` | **主色** |
| 7 | `#CB272D` | `#F76965` | 悬停 |
| 8 | `#A1151E` | `#F98D86` | 点击 |

#### Orange (橙色 - 警告)

| 色阶 | 亮色模式 | 暗色模式 | 用途 |
|------|---------|---------|------|
| 6 | `#FF7D00` | `#FF9626` | **主色** |
| 7 | `#D25F00` | `#FFB357` | 悬停 |
| 8 | `#A64500` | `#FFCD87` | 点击 |

#### Green (绿色 - 成功)

| 色阶 | 亮色模式 | 暗色模式 | 用途 |
|------|---------|---------|------|
| 6 | `#00B42A` | `#27C346` | **主色** |
| 7 | `#009A29` | `#50D266` | 悬停 |
| 8 | `#008026` | `#7EE18B` | 点击 |

### 5. 教育行业配色建议

| 场景 | 推荐色系 | 色值 | Figma Token |
|------|---------|------|-------------|
| 学生管理 | 品牌青 | `#02A999` | Brand-6 |
| 教师管理 | 专业青 | `#14C9C9` | Cyan-6 |
| 课程管理 | 成长绿 | `#00B42A` | Green-6 |
| 考试系统 | 严谨蓝 | `#3491FA` | Geek Blue-6 |
| 数据分析 | 活力橙 | `#FF7D00` | Orange-6 |

### 6. CSS 变量定义

```css
:root[data-theme="light"] {
  /* Primary - Brand */
  --color-primary: #02A999;
  --color-primary-hover: #019288;
  --color-primary-active: #017B77;
  --color-primary-light: #E8FFF9;
  
  /* Functional Colors */
  --color-success: #00B42A;
  --color-success-hover: #009A29;
  --color-warning: #FF7D00;
  --color-warning-hover: #D25F00;
  --color-error: #F53F3F;
  --color-error-hover: #CB272D;
  --color-info: #02A999;
  
  /* Neutral */
  --color-text-primary: #1F1F1F;
  --color-text-secondary: #595959;
  --color-text-tertiary: #8C8C8C;
  --color-border: #D9D9D9;
  --color-bg: #F5F5F5;
  --color-bg-container: #FFFFFF;
  
  /* Shadow */
  --shadow-1: 0 1px 2px 0 rgba(0,0,0,0.03), 0 1px 6px -1px rgba(0,0,0,0.02);
  --shadow-2: 0 3px 6px -4px rgba(0,0,0,0.12), 0 6px 16px 0 rgba(0,0,0,0.08);
  --shadow-3: 0 6px 16px -8px rgba(0,0,0,0.08), 0 9px 28px 0 rgba(0,0,0,0.05);
}

:root[data-theme="dark"] {
  /* Primary - Brand */
  --color-primary: #27BAA6;
  --color-primary-hover: #50CBB7;
  --color-primary-active: #7EDDCA;
  --color-primary-light: #004A4D;
  
  /* Functional Colors */
  --color-success: #27C346;
  --color-success-hover: #50D266;
  --color-warning: #FF9626;
  --color-warning-hover: #FFB357;
  --color-error: #F54E4E;
  --color-error-hover: #F76965;
  --color-info: #27BAA6;
  
  /* Neutral */
  --color-text-primary: #E5E5E5;
  --color-text-secondary: #A6A6A6;
  --color-text-tertiary: #595959;
  --color-border: #424242;
  --color-bg: #141414;
  --color-bg-container: #1F1F1F;
  
  /* Shadow */
  --shadow-1: 0 1px 2px 0 rgba(0,0,0,0.3), 0 1px 6px -1px rgba(0,0,0,0.2);
  --shadow-2: 0 3px 6px -4px rgba(0,0,0,0.5), 0 6px 16px 0 rgba(0,0,0,0.3);
  --shadow-3: 0 6px 16px -8px rgba(0,0,0,0.4), 0 9px 28px 0 rgba(0,0,0,0.2);
}
```

---

## 三、字体系统

### 1. 字体栈 (Font Stack)

```css
/* 英文优先 */
font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 
             'Helvetica Neue', Arial, 'Noto Sans', sans-serif, 
             'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 
             'Noto Color Emoji';

/* 中文优先 */
font-family: 'PingFang SC', 'Microsoft YaHei', 'Helvetica Neue', 
             Arial, sans-serif;
```

### 2. 字号规范 (Type Scale)

| 层级 | 字号 | 行高 | 字重 | 用途 |
|------|------|------|------|------|
| H1 | 38px | 46px | 600 | 页面大标题 |
| H2 | 30px | 38px | 600 | 模块标题 |
| H3 | 24px | 32px | 600 | 子模块标题 |
| H4 | 20px | 28px | 600 | 卡片标题 |
| Body Large | 16px | 24px | 400 | 正文内容 |
| Body | 14px | 22px | 400 | 标准正文 |
| Small | 12px | 20px | 400 | 辅助文字、标注 |
| Caption | 12px | 18px | 400 | 说明文字 |

### 3. 字重使用规范

| 字重 | 数值 | 使用场景 |
|------|------|---------|
| Regular | 400 | 正文、描述文字 |
| Medium | 500 | 按钮文字、标签 |
| SemiBold | 600 | 标题、强调文字 |
| Bold | 700 | 重要数据、关键指标 |

### 4. CSS 变量定义

```css
:root {
  /* Font Family */
  --font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto,
                 'Helvetica Neue', Arial, 'Noto Sans', sans-serif,
                 'PingFang SC', 'Microsoft YaHei';
  
  /* Font Size */
  --font-size-xs: 12px;
  --font-size-sm: 12px;
  --font-size-base: 14px;
  --font-size-lg: 16px;
  --font-size-xl: 20px;
  --font-size-2xl: 24px;
  --font-size-3xl: 30px;
  --font-size-4xl: 38px;
  
  /* Line Height */
  --line-height-xs: 18px;
  --line-height-sm: 20px;
  --line-height-base: 22px;
  --line-height-lg: 24px;
  --line-height-xl: 28px;
  --line-height-2xl: 32px;
  --line-height-3xl: 38px;
  --line-height-4xl: 46px;
  
  /* Font Weight */
  --font-weight-regular: 400;
  --font-weight-medium: 500;
  --font-weight-semibold: 600;
  --font-weight-bold: 700;
}
```

---

## 四、间距系统

### 1. 基础间距 (基于 8px 网格)

| 代号 | 数值 | 用途 |
|------|------|------|
| XS | 4px | 极小间距 |
| S | 8px | 小组件间距 |
| M | 16px | 标准间距 |
| L | 24px | 大间距 |
| XL | 32px | 模块间距 |
| XXL | 48px | 大模块间距 |
| XXXL | 64px | 页面级间距 |

### 2. Auto Layout 间距规范

**垂直间距:**
- 相关元素：8px
- 同组元素：16px
- 不同模块：24-32px
- 页面区块：48-64px

**水平间距:**
- 表单标签与输入框：8px
- 按钮组：8px
- 卡片内边距：16-24px
- 页面边距：24-32px

### 3. CSS 变量定义

```css
:root {
  /* Spacing Scale */
  --spacing-xs: 4px;
  --spacing-sm: 8px;
  --spacing-md: 16px;
  --spacing-lg: 24px;
  --spacing-xl: 32px;
  --spacing-2xl: 48px;
  --spacing-3xl: 64px;
}
```

---

## 五、圆角规范

| 组件 | 圆角值 | 用途 |
|------|--------|------|
| 按钮 | 6px | 标准按钮 |
| 输入框 | 6px | 表单控件 |
| 卡片 | 8px | 内容卡片 |
| 弹窗 | 8px | Modal、Drawer |
| 头像 | 50% | 圆形头像 |
| 标签 | 4px | Tag、Badge |
| 大按钮 | 8px | 主要 CTA |

### CSS 变量定义

```css
:root {
  --radius-sm: 4px;
  --radius-md: 6px;
  --radius-lg: 8px;
  --radius-xl: 12px;
  --radius-full: 9999px;
}
```

---

## 六、阴影与层级

### 1. 阴影规范 (亮色模式)

| 层级 | 阴影值 | 用途 |
|------|--------|------|
| Level 1 | `0 1px 2px 0 rgba(0,0,0,0.03), 0 1px 6px -1px rgba(0,0,0,0.02)` | 卡片、列表项 |
| Level 2 | `0 3px 6px -4px rgba(0,0,0,0.12), 0 6px 16px 0 rgba(0,0,0,0.08)` | 下拉菜单、弹出层 |
| Level 3 | `0 6px 16px -8px rgba(0,0,0,0.08), 0 9px 28px 0 rgba(0,0,0,0.05)` | 弹窗、侧边抽屉 |

### 2. 暗色模式阴影

暗色模式使用更深的阴影和适当的边框来区分层级:

```css
box-shadow: 0 1px 2px 0 rgba(0, 0, 0, 0.3), 
            0 1px 6px -1px rgba(0, 0, 0, 0.2);
border: 1px solid rgba(255, 255, 255, 0.1);
```

### 3. CSS 变量定义

```css
:root {
  --shadow-sm: 0 1px 2px 0 rgba(0,0,0,0.03), 0 1px 6px -1px rgba(0,0,0,0.02);
  --shadow-md: 0 3px 6px -4px rgba(0,0,0,0.12), 0 6px 16px 0 rgba(0,0,0,0.08);
  --shadow-lg: 0 6px 16px -8px rgba(0,0,0,0.08), 0 9px 28px 0 rgba(0,0,0,0.05);
  --shadow-xl: 0 12px 32px -12px rgba(0,0,0,0.15), 0 20px 48px 0 rgba(0,0,0,0.1);
}
```

---

## 七、组件规范 (基于 Ant Design)

### 1. 按钮 (Button)

**类型与使用场景:**

| 类型 | 使用场景 | 优先级 |
|------|---------|--------|
| Primary | 主要操作、表单提交 | 高 |
| Default | 次要操作、取消 | 中 |
| Link | 跳转、辅助操作 | 低 |
| Danger | 删除、危险操作 | 特殊 |

**尺寸规范:**

| 尺寸 | 高度 | 内边距 | 字号 | 图标间距 |
|------|------|--------|------|---------|
| Large | 40px | 16px 24px | 16px | 8px |
| Default | 32px | 8px 16px | 14px | 6px |
| Small | 24px | 4px 8px | 12px | 4px |

**状态规范:**

| 状态 | 样式变化 |
|------|---------|
| Hover | 亮度 +10%, 轻微上浮 1px |
| Active | 亮度 -10%, 轻微下沉 1px |
| Disabled | 透明度 0.5, cursor: not-allowed |
| Loading | 显示 spinner, 禁用点击 |

### 2. 表单 (Form)

**布局规范:**
- 标签宽度：固定 80-120px 或自适应
- 标签对齐：右对齐 (桌面端) / 顶对齐 (移动端)
- 必填标识：红色 `*` 在标签前
- 错误提示：输入框下方，红色文字

**输入框高度:**

| 尺寸 | 高度 | 适用场景 |
|------|------|---------|
| Large | 40px | 重要表单、登录注册 |
| Default | 32px | 标准表单 |
| Small | 24px | 紧凑表单、筛选区 |

**表单项间距:**
- 垂直表单：24px
- 水平表单：32px
- 紧凑表单：16px

### 3. 表格 (Table)

**密度规范:**

| 密度 | 行高 | 内边距 | 适用场景 |
|------|------|--------|---------|
| 宽松 | 64px | 16px | 内容较多、需要详细阅读 |
| 默认 | 54px | 12px | 标准数据展示 |
| 紧凑 | 44px | 8px | 数据密集、需要批量操作 |

**交互规范:**
- 支持行点击选中
- 支持列排序
- 支持批量操作
- 分页器置于右下角

**表格结构:**

```
┌─────────────────────────────────────────┐
│ [筛选区 - 可展开]                        │
├─────────────────────────────────────────┤
│ [批量操作栏 - 选中后显示]                 │
├─────────────────────────────────────────┤
│ 表头 (可排序、可筛选)                     │
├─────────────────────────────────────────┤
│ 数据行 (Hover 高亮、Click 选中)          │
├─────────────────────────────────────────┤
│ [分页器] 共 X 条  每页 X 条  < 1 2 3 >   │
└─────────────────────────────────────────┘
```

### 4. 导航 (Navigation)

**侧边导航 (Sider):**

| 属性 | 数值 |
|------|------|
| 展开宽度 | 256px |
| 收起宽度 | 80px |
| 图标尺寸 | 16×16px |
| 菜单项高度 | 40px |
| 子菜单缩进 | 24px |

**顶部导航 (Header):**

| 属性 | 数值 |
|------|------|
| 高度 | 64px |
| Logo 高度 | 32px |
| 导航项间距 | 24px |
| 内边距 | 0 24px |

**面包屑 (Breadcrumb):**

| 属性 | 规范 |
|------|------|
| 位置 | 页面标题上方 |
| 层级 | 不超过 4 级 |
| 分隔符 | `/` 或 `>` |
| 字号 | 14px |
| 颜色 | 次要文字色 |

### 5. 弹窗 (Modal)

**尺寸规范:**

| 类型 | 宽度 | 用途 |
|------|------|------|
| Small | 400px | 确认对话框、简单表单 |
| Default | 520px | 标准弹窗 |
| Large | 700px | 复杂表单、详情展示 |
| Full | 90% | 完整编辑、复杂操作 |

**交互规范:**
- 必须有关闭按钮 (×)
- 支持 ESC 关闭
- 支持点击遮罩关闭 (可配置)
- 危险操作需二次确认

**弹窗结构:**

```
┌─────────────────────────────────┐
│ 标题                      [×]   │
├─────────────────────────────────┤
│                                 │
│           内容区                 │
│                                 │
├─────────────────────────────────┤
│        [取消]  [确认]           │
└─────────────────────────────────┘
```

### 6. 卡片 (Card)

**尺寸规范:**

| 类型 | 内边距 | 圆角 | 阴影 |
|------|--------|------|------|
| 默认 | 24px | 8px | Level 1 |
| 紧凑 | 16px | 6px | Level 1 |
| 宽松 | 32px | 12px | Level 2 |

**卡片结构:**

```
┌─────────────────────────────────┐
│ [图标/头像] 标题     [操作...]  │
│            副标题/描述           │
├─────────────────────────────────┤
│                                 │
│           内容区                 │
│                                 │
├─────────────────────────────────┤
│            底部操作区             │
└─────────────────────────────────┘
```

---

## 八、响应式断点

### 1. 断点定义

| 断点 | 宽度 | 适用设备 | 布局策略 |
|------|------|---------|---------|
| XS | < 576px | 小屏手机 | 单列、隐藏次要内容 |
| SM | ≥ 576px | 手机 | 单列、完整内容 |
| MD | ≥ 768px | 平板 | 双列、侧边导航可收起 |
| LG | ≥ 992px | 小屏桌面 | 三列、完整导航 |
| XL | ≥ 1200px | 桌面 | 宽屏布局 |
| XXL | ≥ 1600px | 大屏桌面 | 最大化内容区 |

### 2. CSS 媒体查询

```css
/* 小屏手机 */
@media (max-width: 575px) { ... }

/* 手机 */
@media (min-width: 576px) and (max-width: 767px) { ... }

/* 平板 */
@media (min-width: 768px) and (max-width: 991px) { ... }

/* 小屏桌面 */
@media (min-width: 992px) and (max-width: 1199px) { ... }

/* 桌面 */
@media (min-width: 1200px) and (max-width: 1599px) { ... }

/* 大屏桌面 */
@media (min-width: 1600px) { ... }
```

### 3. 移动端适配规范

| 组件 | 桌面端 | 移动端 |
|------|--------|--------|
| 导航 | 侧边固定导航 | 底部 TabBar 或 汉堡菜单 |
| 表格 | 完整表格 | 卡片式或横向滚动 |
| 表单 | 标签右对齐 | 标签顶对齐 |
| 按钮 | 行内排列 | 全宽堆叠 |
| 弹窗 | 居中 Modal | 底部 Drawer |
| 筛选 | 展开面板 | 抽屉式筛选 |

---

## 九、暗色模式切换

### 1. 切换机制

**推荐方案:**
- 使用 CSS 变量 (Custom Properties)
- 通过 `data-theme` 属性控制
- 用户选择持久化 (localStorage)

**实现示例:**

```html
<html data-theme="light">
<!-- 或 -->
<html data-theme="dark">
```

```javascript
// 主题切换工具函数
function setTheme(theme) {
  document.documentElement.setAttribute('data-theme', theme);
  localStorage.setItem('theme', theme);
}

function getTheme() {
  return localStorage.getItem('theme') || 
         (window.matchMedia('(prefers-color-scheme: dark)').matches ? 'dark' : 'light');
}

// 初始化
setTheme(getTheme());

// 监听系统主题变化
window.matchMedia('(prefers-color-scheme: dark)').addEventListener('change', (e) => {
  if (!localStorage.getItem('theme')) {
    setTheme(e.matches ? 'dark' : 'light');
  }
});
```

### 2. 切换入口

| 属性 | 规范 |
|------|------|
| 位置 | 顶部导航右侧 |
| 图标 | 太阳 (亮) / 月亮 (暗) |
| 尺寸 | 24×24px |
| 交互 | 点击切换、Tooltip 提示 |

### 3. 图片与媒体处理

暗色模式下图片需要适当调整:

```css
[data-theme="dark"] img {
  filter: brightness(0.9) contrast(1.1);
}

[data-theme="dark"] .logo {
  filter: invert(1) hue-rotate(180deg);
}
```

---

## 十、Auto Layout 规范

### 1. 布局原则

- **使用 Flexbox** 作为主要布局方式
- **优先使用 gap** 而非 margin
- **容器内边距统一** (16px/24px)
- **内容区最大宽度约束** (1200px)

### 2. 常见布局模式

**垂直堆叠 (Vertical Stack):**

```css
.stack-vertical {
  display: flex;
  flex-direction: column;
  gap: 16px;
}
```

**水平排列 (Horizontal Row):**

```css
.stack-horizontal {
  display: flex;
  flex-direction: row;
  gap: 16px;
  align-items: center;
}
```

**两端对齐 (Space Between):**

```css
.stack-between {
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  align-items: center;
}
```

**自适应网格 (Responsive Grid):**

```css
.grid-auto {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
  gap: 24px;
}
```

**居中布局 (Center):**

```css
.center {
  display: flex;
  justify-content: center;
  align-items: center;
}
```

### 3. 内容区约束

```css
.container {
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 24px;
}

.container-fluid {
  width: 100%;
  padding: 0 24px;
}
```

### 4. 页面布局结构

```
┌─────────────────────────────────────────┐
│              Header (64px)              │
├───────────┬─────────────────────────────┤
│           │                             │
│   Sider   │        Main Content         │
│  (256px)  │        (自适应)              │
│           │                             │
│           │                             │
└───────────┴─────────────────────────────┘
```

---

## 十一、无障碍规范 (Accessibility)

### 1. 色彩对比度

| 元素 | 对比度要求 | 检查方法 |
|------|-----------|---------|
| 正文文字 | ≥ 4.5:1 | WebAIM Contrast Checker |
| 大文字 (≥18px) | ≥ 3:1 | WebAIM Contrast Checker |
| UI 组件/图标 | ≥ 3:1 | WebAIM Contrast Checker |

### 2. 键盘导航

**Tab 顺序:**
- 所有交互元素必须可通过 Tab 到达
- Tab 顺序应与视觉顺序一致
- 焦点状态清晰可见

**焦点样式:**

```css
:focus-visible {
  outline: 2px solid var(--color-primary);
  outline-offset: 2px;
}

:focus:not(:focus-visible) {
  outline: none;
}
```

**快捷键支持:**

| 按键 | 功能 |
|------|------|
| Tab | 下一个交互元素 |
| Shift+Tab | 上一个交互元素 |
| Enter | 激活按钮/链接 |
| Space | 激活按钮/复选框 |
| Esc | 关闭弹窗/菜单 |
| Arrow Keys | 导航菜单/选项卡 |

### 3. 屏幕阅读器

**图标按钮:**

```html
<button aria-label="设置">
  <IconSettings />
</button>
```

**表单输入:**

```html
<label for="email">邮箱</label>
<input 
  type="email" 
  id="email" 
  aria-describedby="email-help"
  aria-invalid="true"
/>
<span id="email-help">请输入您的工作邮箱</span>
<span role="alert">邮箱格式不正确</span>
```

**状态通知:**

```html
<div role="status" aria-live="polite">
  保存成功！
</div>

<div role="alert">
  发生错误，请重试
</div>
```

### 4. 动态内容

| 场景 | ARIA 属性 |
|------|----------|
| 加载状态 | `aria-busy="true"` |
| 展开/收起 | `aria-expanded="true/false"` |
| 选中状态 | `aria-selected="true/false"` |
| 禁用状态 | `aria-disabled="true"` |
| 必填字段 | `aria-required="true"` |

---

## 十二、交付清单

### 设计文件

- [ ] Figma/Sketch 设计稿 (含亮暗模式)
- [ ] 组件库文档
- [ ] 交互原型
- [ ] 设计 Token 导出文件

### 开发文件

- [ ] CSS 变量定义文件 (`design-tokens.css`)
- [ ] 主题切换工具函数 (`theme.ts`)
- [ ] 响应式断点配置 (`breakpoints.ts`)
- [ ] 组件使用示例 (`examples/`)
- [ ] TypeScript 类型定义 (`types.d.ts`)

### 验收标准

- [ ] 亮暗模式切换正常
- [ ] 移动端适配完成 (375px-1920px)
- [ ] 键盘导航可用
- [ ] 色彩对比度达标 (WCAG AA)
- [ ] 屏幕阅读器测试通过
- [ ] 主流浏览器兼容 (Chrome, Safari, Firefox, Edge)

---

## 附录

### A. 设计资源链接

- [Ant Design 官方文档](https://ant-design.antgroup.com/)
- [Ant Design 色彩生成器](https://ant.design/docs/react/customize-theme-cn)
- [WebAIM 对比度检查器](https://webaim.org/resources/contrastchecker/)
- [WCAG 2.1 无障碍指南](https://www.w3.org/WAI/WCAG21/quickref/)

### B. 常用工具

- **Figma**: 设计稿与组件库
- **Storybook**: 组件文档与测试
- **Style Dictionary**: Design Token 管理
- **axe DevTools**: 无障碍检测

### C. 版本历史

| 版本 | 日期 | 更新内容 | 作者 |
|------|------|---------|------|
| 1.0 | 2026-03-25 | 初始版本 | - |
| 1.1 | 2026-03-25 | 更新色彩系统，对齐 Figma Design Tokens (Arco 色彩系统) | - |

---

*本文档基于 Ant Design 设计语言，结合教育行业特点与 UI/UX Pro Max 最佳实践编写。*
