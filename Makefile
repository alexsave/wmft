PDF=dist/Your-Book-v1.0.pdf
MD=$(shell ls markdown/*.md | sort)

build: $(PDF)

$(PDF): $(MD) book.yml
	mkdir -p dist
	pandoc --from=gfm \
	--metadata-file=book.yml \
	--pdf-engine=xelatex \
	--toc --toc-depth=2 \
	$(MD) -o $(PDF)
	@echo "\nBuilt $(PDF)"

clean:
	rm -rf dist

.PHONY: build clean
