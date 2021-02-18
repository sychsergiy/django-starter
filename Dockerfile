FROM python:3.8

ENV PYTHONUNBUFFERED 1

RUN mkdir /django_starter

WORKDIR /django_starter

COPY requirements.txt /django_starter/

RUN pip install --upgrade pip && pip install -r requirements.txt

COPY . /django_starter/