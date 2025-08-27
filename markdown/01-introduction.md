# Introduction {#intro}

This introduction demonstrates links, references, and a simple table. If you’re looking for the first walkthrough, jump to [Chapter One](#chapter-one).

### Why Markdown → Pandoc?

- **Speed**: write fast without fighting layout tools.
- **Repeatable builds**: the PDF is rebuilt from source with one command.
- **Portability**: you can also emit ePub/HTML later with the same sources.

### A tiny table

| Feature | Why it matters |
|--------------------|--------------------------------|
| Clickable TOC | Readers navigate instantly |
| Bookmarks | Mirrors your chapter hierarchy |
| Searchable text | Better than image-PDFs |

### Inline code and blocks

Use `
``inline code``
` for brief terms and fenced blocks for examples:

```bash
pandoc --from=gfm --metadata-file=book.yml \
--pdf-engine=xelatex --toc --toc-depth=2 \
markdown/*.md -o dist/Your-Book-v1.0.pdf
