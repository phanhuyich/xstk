all: preview

FORMAT?=html

preview:
	quarto preview --to $(FORMAT)

publish:
	quarto publish gh-pages
