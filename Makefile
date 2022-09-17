all: preview

FORMAT?=html

preview:
	quarto preview --no-browser --to $(FORMAT)

render:
	quarto render --to pdf

publish:
	quarto publish gh-pages --no-browser
