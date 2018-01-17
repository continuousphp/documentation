FROM squidfunk/mkdocs-material

LABEL maintainer "Daniel Leivas <daniel.leivas@continuous.lu>"

ADD mkdocs.yml /mkdocs/mkdocs.yml
WORKDIR /mkdocs