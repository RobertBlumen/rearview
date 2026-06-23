.PHONY: install venv lock build upload

install:           ## create .venv and install all deps
	uv sync

venv:              ## create the virtual environment
	uv venv

lock:              ## update uv.lock
	uv lock

build:             ## build distributions into dist/
	uv run python -m build

upload:            ## upload dist/* to PyPI
	uv run twine upload dist/*
