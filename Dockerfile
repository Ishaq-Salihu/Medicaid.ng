FROM python:3.8

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /code/medicaid.ng

COPY Pipfile Pipfile.lock /code/medicaid.ng/
RUN pip install pipenv && pipenv install --system
COPY . /code/medicaid.ng/