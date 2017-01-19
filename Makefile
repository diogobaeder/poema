build: test lint

test:
	pytest

lint:
	flake8

run:
	python manage.py runserver

collect-templates:
	python manage.py collecttemplates

collect-static:
	python manage.py collectstatic
