#!/bin/sh
# 只下载 sources/ 目录里那一小部分可公开转载的内容。
# 不下载任何付费、版权不明或现代商业作品。
# 用法：在本地运行 sh sources/fetch-open-sources.sh
# 下载结果放在当前目录下的 downloaded-open-sources/，不要把下载结果
# 未经许可检查就推到公开仓库。

set -eu
OUT="downloaded-open-sources"
mkdir -p "$OUT"

# 1. CC-BY 4.0 研究论文（索引第 47 条）
# 作者 Mingyu Gao，DOI 10.21203/rs.3.rs-10868814/v1
# 许可：Creative Commons Attribution 4.0 International License
# 转载时必须署名并注明许可，见 sources/open-licensed/research-paper-ccby.md
curl -L -o "$OUT/research-paper-ccby-rs-10868814-v1.pdf" \
  "https://www.researchsquare.com/article/rs-10868814/v1.pdf?c=1790074934000"

# 2. 公有领域古籍《遁甲演义》维基文库原文（索引第 21 条）
# 明代程道生撰，清代收入《四库全书》。
# 维基文库 API：只取原文 wikitext，不含现代点校注释的单独页面。
# 标题中的中文请保持原样，不要改成简体或拼音。
curl -L -o "$OUT/dunjia-yanyi-wikisource.txt" \
  "https://zh.wikisource.org/w/api.php?action=query&prop=revisions&rvprop=content&format=json&titles=%E9%81%81%E7%94%B2%E6%BC%94%E7%BE%A9"

echo "Done. Check $OUT/ and keep the attribution and license notes in sources/."
