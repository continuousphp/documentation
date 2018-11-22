bucket?=
distribution?=

install:
	pip install mkdocs==0.17.5
	pip install mkdocs-material==2.9.4
	
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
