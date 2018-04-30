build: test lint

setup-dev:
	pip install -r requirements-test.txt

test:
	pytest -s

lint:
	flake8

run:
	python manage.py runserver

run-gunicorn:
	gunicorn -c gunicorn.py poema.wsgi

shell:
	python manage.py shell

collect-static:
	python manage.py collectstatic

migrations:
	python manage.py makemigrations

apply-migrations:
	python manage.py migrate

pep8:
	autopep8 -i -r -v -a -a -a -a -a .

messages:
	python manage.py makemessages --ignore __pycache__ \
	    --locale pt_BR
	python manage.py compilemessages

deploy:
	ansible-playbook ansible/deploy.yml
