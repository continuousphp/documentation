bucket?=
distribution?=

install:
	pip install mkdocs mkdocs-material --upgrade --user

build:
ifdef CONTINUOUSPHP
	rm -rf .git
endif
	mkdocs build -d doc_dist

deploy:
	aws s3 sync --acl=public-read --profile=deployer ./dist/ s3://$(bucket)/
	aws configure set preview.cloudfront true
	aws cloudfront create-invalidation --profile=deployer --distribution-id $(distribution) --paths '/*'

purge:
	rm -rf doc_dist
