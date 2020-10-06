#pull base image

FROM python:3.7

ENV PYTHONDONTWRITEBYTECODE 1

ENV PYTHONBUFFERED 1

#set work directory
WORKDIR /code

#install dependencies

COPY Pipfile Pipfile.lock /code/

RUN pip install pipenv && pipenv install --system

#copy project

COPY . /code/
