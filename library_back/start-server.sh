#!/bin/bash

echo "Virtual environment is ${VENV_NAME:?is not set}"

echo "Activating virtual environment '${VENV_NAME}'"
source "${VENV_NAME}/bin/activate"

echo "Tell Django ORM to generate SQL commands"
python3 manage.py makemigrations

echo "Tell Django ORM to execute the commands on the database"
python3 manage.py migrate

echo "Start the application"
python3 manage.py runserver 0.0.0.0:8000
