build: test lint

setup-dev:
	pip install -r requirements-test.txt

test:
	pytest -s

lint:
	flake8

run:
	python manage.py runserver

run-circus:
	circusd server.cfg

collect-templates:
	python manage.py collecttemplates

collect-static:
	python manage.py collectstatic

migrations:
	python manage.py makemigrations

apply-migrations:
	python manage.py migrate

pep8:
	autopep8 -i -r -v -a -a -a -a -a .

messages:
	python manage.py makemessages -a
	python manage.py compilemessages

deploy:
	ansible-playbook ansible/deploy.yml
