libwebman.so:
	./bpc-prepare.sh src.list
	$(MAKE) -C ./Webman libwebman

libwebman:
	bpc -v \
		-c bpc.conf  \
		-l webman \
		-u psr-log \
		-u psr-container \
		-u fastroute \
		-u monolog \
		-u workerman \
		--input-file src.list

install-libwebman:
	cd Webman && bpc -l webman --install
