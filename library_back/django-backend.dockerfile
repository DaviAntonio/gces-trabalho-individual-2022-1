FROM python:3.10.6-bullseye

WORKDIR /opt/library-backend

COPY . ./

ARG VENV_NAME=env

RUN ./install-dependencies.sh
