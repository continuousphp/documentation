bucket?=
distribution?=

install:
ifdef CONTINUOUSPHP
	sudo apt-get update -y
	sudo apt-get install -y software-properties-common
	sudo add-apt-repository ppa:jonathonf/python-3.6
	sudo apt-get update -y
	sudo apt-get install -y python3 python3-pip python3.6
	sudo pip3 install virtualenv
	virtualenv -p /usr/bin/python3.6 ~/virtualenvs/venv-devopspy
	source ~/virtualenvs/venv-devopspy/bin/activate
endif
	pip3 install mkdocs mkdocs-material
	
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
