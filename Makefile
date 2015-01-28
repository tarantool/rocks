all:
	luarocks-admin make_manifest ./
	zip manifest.zip manifest
	zip manifest-5.1.zip manifest-5.1
	zip manifest-5.2.zip manifest-5.2
	zip manifest-5.3.zip manifest-5.3
	python convert.py
