libwebman.so:
	./bpc-prepare.sh src.list
	$(MAKE) -C ./Webman libwebman

libwebman:
	bpc -v \
		-c bpc.conf  \
		-l webman \
		-u psr-log                  \
		-u psr-container            \
		-u fastroute                \
		-u monolog                  \
		-u workerman                \
		-u doctrine-inflector       \
		-u illuminate-contracts     \
		-u illuminate-container     \
		-u illuminate-support       \
		-u illuminate-events        \
		-u illuminate-pagination    \
		-u illuminate-database      \
		-u symfony-polyfill-php80           \
		-u symfony-contracts-translation    \
		-u symfony-component-translation    \
		-u carbon                           \
		--input-file src.list

install-libwebman:
	cd Webman && bpc -l webman --install
