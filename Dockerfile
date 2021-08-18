FROM python:3.9.6-alpine
MAINTAINER Mohammad Reza Bayati

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
RUN chown user:user -R /app
USER user