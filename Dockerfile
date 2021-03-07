FROM ubuntu:latest

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y curl
RUN apt-get install -y python

COPY config.yml ./
RUN curl -s https://shopify.github.io/themekit/scripts/install.py | python
