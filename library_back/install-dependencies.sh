#!/bin/bash

echo "Virtual environment is ${VENV_NAME:?is not set}"

echo "Creating virtual environment '${VENV_NAME}'"
python3 -m venv "${VENV_NAME}"

echo "Activating virtual environment '${VENV_NAME}'"
source "${VENV_NAME}/bin/activate"

echo "Installing dependencies"
pip3 install --no-cache-dir --requirement requirements.txt

echo "Done"
