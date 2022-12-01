all: preview
-include .env
export

FORMAT?=html
PORT?=8888

preview:
	quarto preview $(QUARTO_PARAMS) --to $(FORMAT) --port $(PORT)

render:
	quarto render --to pdf

publish:
	quarto publish gh-pages $(QUARTO_PARAMS) --no-prompt
