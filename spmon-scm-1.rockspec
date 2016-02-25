package = 'spmon'
version = 'scm-1'
source  = {
	url    = 'git://github.com/tarantool/spmon.git',
	branch = 'master',
}
description = {
	summary  = "Tarantool rock for an HTTPD Sophia Monitoring",
	homepage = 'https://github.com/tarantool/spmon/',
	license  = 'BSD',
}
dependencies = {
	'lua >= 5.1', 'http'
}
build = {
	type = 'builtin',
	modules = {
		['spmon'] = 'spmon/init.lua'
	}
}

-- vim: syntax=lua
