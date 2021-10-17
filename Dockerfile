FROM python:3.7-alpine
MAINTAINER Sasan Sohrabi

ENV PYTHONUNBUFFERED 1

RUN /usr/local/bin/python -m pip install --upgrade pip
RUN export PATH=/usr/lib/postgresql/X.Y/bin/:$PATH

COPY ./requirements.txt /requirements.txt
RUN apk add --update --no-cache postgresql-client jpeg-dev
RUN apk add --update --no-cache --virtual .tmp-build-deps gcc libc-dev linux-headers postgresql-dev musl-dev zlib zlib-dev
RUN pip install -r /requirements.txt
RUN apk del .tmp-build-deps

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
RUN chown user:user -R /app/
USER user
