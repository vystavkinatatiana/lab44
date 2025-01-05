FROM python:3.12-alpine

WORKDIR /flask_app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade pip
COPY ./flask_app/requirements.txt /flask_app/requirements.txt
RUN pip install -r requirements.txt

COPY ./flask_app /flask_app
