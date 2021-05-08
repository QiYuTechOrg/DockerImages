DL_URL:=https://github.com/healthchecks/healthchecks/archive/v1.20.0.zip
FILE_NAME:=v1.20.0.zip
DIR_NAME:=healthchecks-1.20.0

download:
	test -s $(FILE_NAME) || wget $(DL_URL)

unzip-code: download
	test -d $(DIR_NAME) || unzip -o $(FILE_NAME)

clean:
	rm -rf $(DIR_NAME) && rm $(FILE_NAME)
