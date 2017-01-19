build: test lint

test:
	pytest

lint:
	flake8

run:
	python manage.py runserver

templates:
	python manage.py collecttemplates
