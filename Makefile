all:
	luarocks-admin make_manifest ./
	rm -f manifest-5.*
