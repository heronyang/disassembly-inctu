CUR_PATH=$(shell pwd)
dump:
	apktool d $(CUR_PATH)/edu.nctu.e3.apk $(CUR_PATH)/dump/
	d2j-dex2jar edu.nctu.e3.apk
