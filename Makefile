all: preview

FORMAT?=html

preview:
	quarto preview --to $(FORMAT)

render:
	quarto render

publish:
	quarto publish gh-pages
