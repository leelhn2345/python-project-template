init:
	poetry install
	poetry shell
	pre-commit install

pre-commit:
	pre-commit run --all-files

fix:
	ruff check . --fix

format:
	ruff format .

mypy:
	mypy .

# remove all cached files
clean:
	find . | grep -E "(.*_cache|.next/|\.pyc|\.pyo$$)" | xargs rm -rf
