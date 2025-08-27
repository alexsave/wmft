PDF=dist/Into-Running-v1.0.pdf
MD=$(shell ls markdown/*.md | sort)

build:
	mkdir -p dist
	pandoc $(MD) \
	  --from=gfm+smart+attributes+fenced_divs \
	  --metadata-file=book.yml \
	  --template=tradebook.tex \
	  --lua-filter=boxes.lua \
	  --pdf-engine=xelatex \
	  --toc --toc-depth=2 \
	  --top-level-division=part \
	  -o $(PDF)
	@echo "Built $(PDF)"

clean:
	rm -rf dist

.PHONY: build clean
