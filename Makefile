bucket?=
distribution?=

install:
ifdef CONTINUOUSPHP
	sudo apt-get update -y
	sudo apt-get install -y python3 python3-pip
endif
	sudo pip3 install mkdocs==1.0.4 mkdocs-material==3.1.0

build:
ifdef CONTINUOUSPHP
	rm -rf .git
endif
	export LC_ALL=C.UTF-8
	export LANG=C.UTF-8
	mkdocs build -d dist

deploy:
	aws s3 sync --acl=public-read ./dist/ s3://$(bucket)/
	aws configure set preview.cloudfront true
	aws cloudfront create-invalidation --distribution-id $(distribution) --paths '/*'

purge:
	rm -rf dist
