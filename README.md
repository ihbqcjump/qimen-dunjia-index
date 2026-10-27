# 奇门遁甲资料索引库：阴盘 / 天师 / 道家

创建日期：2026-10-27。条目 59 条，来自 5 个搜索方向，去重后保留。成功 5，失败 0。

这是一个**索引库，不是文件托管库**。本库没有下载、上传或转载托管任何 PDF 或课程文件。现代商业作品只记录书目、来源链接和获取方式，标为 `copyrighted_do_not_rehost`，不要把它们重新上传到 GitHub 或网盘。

## 文件

- `index.json`：机器可读的完整索引，AI 远程调取的首选。字段见下。
- `index.csv`：同一索引的表格版，可用 Excel / Numbers 打开筛选。
- `index.md`：按搜索方向分组的人读版，含简介、链接和核验备注。

## 字段说明

每条记录都有：`id`、`term`（搜索方向）、`title`、`author_or_source`、`type`（pdf / github_repo / webpage / book / classical_text / video / course / forum_post / other）、`url`、`pdf_url`（仅在已验证是 PDF 链接时填写，否则为空）、`language`、`description`、`relevance`（high / medium / low）、`access`（free_open / free_registration / paid / unknown）、`copyright_status`（public_domain / open_license / unknown / copyrighted_do_not_rehost）、`notes`（核验过程、页数、星数、是否未打开等）。

## 统计与缺口

- 按方向：阴盘奇门遁甲 15 条，道家奇门遁甲 11 条，古籍经典公开资料 15 条，GitHub / PDF 开源资料 12 条，天师奇门遁甲 6 条。
- 按访问：free_open 39 条，paid 8 条，unknown 12 条。
- 按版权：unknown 27 条，copyrighted_do_not_rehost 19 条，open_license 9 条，public_domain 4 条。
- 保留 `pdf_url` 的有 6 条，2026-10-27 复核时原 4 条均可打开，其中第 15 条仅为预览节选（233 行），使用前仍要先点开核实；第 58、59 条为 DDGS 第一批新增的公有领域扫描件文件页。
- DDGS 第一批（2026-10-27，6 个 PDF 查询）新增第 57、58、59 条，均为公有领域古籍来源；其余新候选未同步，待逐条核实。
- **重要缺口：没有找到标题恰好为“天师奇门遁甲”的可验证书籍、PDF 或 GitHub 仓库。** 天师方向的 6 条都是近似匹配，相关度最高 medium，包括通用奇门百科、龙虎山背景的英文介绍、1982 年电影条目和一本现代悬疑小说（周德东《奇门遁甲》，不是教材）。不要把这些当成“天师派专属体系”的证据。
- 也没有找到覆盖阴盘、天师、道家三派的统一网盘或 GitHub 合集。本库就是目前能做的统一索引起点。

## 优先看什么

1. 想直接用的开源排盘工具：先看 `type = github_repo` 且 `copyright_status = open_license` 的条目，例如道家阴盘排盘系统（wrz1911/daojiayinpan，MIT）、阴盘排盘（magiclaw/yinpan-qimen-dunjia，MIT）、KinQiMen、qfdk/qimen、redrockhorse/qimenpaipan。
2. 想读古籍原文：先看 `type = classical_text` 且 `access = free_open` 的条目，例如维基文库《奇门遁甲统宗》《遁甲演义》、大道家园《遁甲演义》、ctext《御定奇门遁甲宝鉴》《奇门遁甲秘笈大全》卷二十五。古籍页面未显示授权声明的，本库记为 unknown，使用前自行确认底本和授权。
3. 想看现代阴盘教材：先看书目信息，再通过正规渠道购买或借阅，不要用聚合站的疑似盗版链接。本库里学易网、古籍屋、Scribd 的条目都只记了来源，没有下载。

## 如何推到 GitHub

本机没有你的 GitHub 账号和仓库信息，所以没有自动推送。准备好后这样做：

```bash
cd ~/workspace/qimen-dunjia-index
git init
git add README.md index.json index.csv index.md
git commit -m "Add Qimen Dunjia index: 56 entries, 2026-10-27"
git branch -M main
git remote add origin <你的仓库地址>
git push -u origin main
```

只推送这 4 个索引文件，不要把从别处下载的他人 PDF 一起推送。

## 如何同步到网盘

把 `qimen-dunjia-index` 整个文件夹复制到网盘同步目录即可。索引文件都很小，不含任何 PDF 正文。以后新增条目时，先在 `index.json` 里加一条，再重新生成 `index.csv` / `index.md`，保持三份一致。

## 远程 AI 调取内容的方法

把这个文件夹或 `index.json` 交给 AI，并用下面这种问法，AI 才能只按索引回答、不编造链接：

- “在 index.json 里，找 term 是‘阴盘奇门遁甲’、type 是 github_repo、copyright_status 是 open_license 的条目，列出标题和 url。”
- “找 access 是 free_open、type 是 classical_text 的古籍，列出标题、url 和 notes 里说的核验情况。”
- “天师奇门遁甲方向有什么？只按索引回答，并说明有没有标题完全匹配的专著。”
- “我要找讲四害化解的阴盘资料，先在 description / notes 里筛关键词，再打开原链接核实，不要直接引用没验证的 PDF 链接。”

调取规则：

1. 先筛 `term` / `type` / `access` / `copyright_status` / `relevance`，再读 `description` 和 `notes`。
2. `pdf_url` 为空不代表没有 PDF，只代表本次没有验证到直接链接，要先打开 `url` 再找。
3. `notes` 里写了“仅见于搜索摘要”“返回 403 / 400 / 429”“未打开验证”的条目，引用前必须重新打开核实。
4. 涉及传承、真伪、疗效、改运等断言时，要区分教材说法、观点文章和批评文章，例如第 13 条是质疑阴盘传承的评论，不是中立教材。
5. 需要正文内容时，AI 应打开原链接现读现答，不要凭索引简介编造书中细节；付费内容按原渠道获取。

## 更新方法

下次补搜时，用同一套字段追加新条目，`id` 顺延，`term` 用原有 5 个方向之一或注明新方向，并在 README 的统计里同步数字。删除失效链接时保留 `id` 不重用，在 notes 里写明失效日期和核查结果。
