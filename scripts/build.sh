#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
OUT="$ROOT/dist"
mkdir -p "$OUT"

pandoc \
--from=gfm \
--metadata-file="$ROOT/book.yml" \
--pdf-engine=xelatex \
--toc --toc-depth=2 \
"$ROOT/markdown/"*.md \
-o "$OUT/Your-Book-v1.0.pdf"

echo "Built $OUT/Your-Book-v1.0.pdf"
