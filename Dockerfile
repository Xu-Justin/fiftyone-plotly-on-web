FROM python:3.9.13-slim

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -qq && \
    apt-get install -y git vim libgtk2.0-dev zip unzip && \
    rm -rf /var/cache/apk/*

COPY requirements.txt /
RUN pip --no-cache-dir install -r /requirements.txt