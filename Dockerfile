FROM jobandtalent/mkdocs

MAINTAINER Daniel Leivas <daniel.leivas@continuous.lu>

ADD mkdocs.yml /mkdocs/mkdocs.yml
WORKDIR /mkdocs