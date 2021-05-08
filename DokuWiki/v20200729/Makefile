DL_URL:=https://github.com/splitbrain/dokuwiki/archive/release_stable_2020-07-29.zip
FILE_NAME:=release_stable_2020-07-29.zip
DIR_NAME:=dokuwiki-release_stable_2020-07-29
DOCKER_TAG:=qiyutech/dokuwiki:v20200729

download:
	test -s $(FILE_NAME) || wget $(DL_URL)

unzip-code: download
	test -d $(DIR_NAME) || unzip -o $(FILE_NAME)
	# conf and data directory need extract
	# it's data should not in docker
	# but in external storage
	rm -rf $(DIR_NAME)/conf
	rm -rf $(DIR_NAME)/data

clean:
	rm -rf $(DIR_NAME) && rm $(FILE_NAME)

build: unzip-code
	docker build . -f Dockerfile --tag $(DOCKER_TAG)
