all:
	poetry run mkdocs build -d ../simsapa.github.io-main/

serve:
	poetry run mkdocs serve --watch ../simsapa.github.io-main/
