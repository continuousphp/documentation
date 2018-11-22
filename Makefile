bucket?=
distribution?=

install:
	pip install mkdocs==1.0.4
	pip install mkdocs-material==3.1.0
	
build:
ifdef CONTINUOUSPHP
	rm -rf .git
endif
	mkdocs build -d dist

deploy:
	aws s3 sync --acl=public-read ./dist/ s3://$(bucket)/
	aws configure set preview.cloudfront true
	aws cloudfront create-invalidation --distribution-id $(distribution) --paths '/*'

purge:
	rm -rf dist
