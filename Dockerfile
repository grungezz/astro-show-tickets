FROM python:3.11.4-slim-buster
LABEL maintainer=".nagolyuk@gmail.com"

ENV PYTHONUNBUFFERED 1

WORKDIR /app

COPY requirements.txt /app/requirements.txt

RUN apt-get update && apt-get -y install libpq-dev gcc

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN adduser --disabled-password --gecos '' django-user

RUN chown -R django-user:django-user /app

USER django-user