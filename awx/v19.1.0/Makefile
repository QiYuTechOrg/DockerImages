
download-source-code:
	wget https://github.com/ansible/awx/archive/refs/tags/19.1.0.zip
	unzip 19.1.0.zip

pull-docker-image:
	docker pull quay.io/ansible/awx:19.1.0

build-image:
	docker build . -t qiyutech:awx

run-db:
	docker run -it                    \
	    -e POSTGRES_USER=postgres     \
	    -e POSTGRES_PASSWORD=postgres \
	    -e POSTGRES_DB=postgres       \
	    -p 5432:5432                  \
	    postgres:12


run-redis:
	docker run -it -p 6379:6379 redis


run-awx:
	docker run --env-file=.env                    \
	    -p 8013:8013 -it qiyutech:awx bash
