APP_SERVICE_NAME = app
DB_SERVICE_NAME = db
RUN_APP = docker-compose exec $(APP_SERVICE_NAME)
RUN_POETRY = $(RUN_APP) poetry run
RUN_DJANGO = $(RUN_POETRY) python manage.py
RUN_PYTEST = $(RUN_POETRY) pytest

prepare:
	docker-compose up -d --build

build:
	docker-compose build

up-d:
	docker-compose up -d

up:
	docker-compose up

down:
	docker-compose down

collectstatic:
	$(RUN_DJANGO) collectstatic

makemigrations:
	$(RUN_DJANGO) makemigrations

migrate:
	$(RUN_DJANGO) migrate

show_urls:
	$(RUN_DJANGO) show_urls

shell:
	$(RUN_DJANGO) debugsqlshell

loaddata:
	$(RUN_DJANGO) loaddata local_fixtures.json

zero:
	$(RUN_DJANGO) migrate admin_portal zero

update:
	$(RUN_APP) poetry update

app:
	docker exec -it lc_inquiry_pro_app bash

db:
	docker exec -it lc_inquiry_pro_db bash

test:
	$(RUN_PYTEST)

format:
	$(RUN_POETRY) black .
	$(RUN_POETRY) isort .
