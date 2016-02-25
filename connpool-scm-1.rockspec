package = 'connpool'
version = 'scm-1'
source  = {
    url    = 'git://github.com/tarantool/connpool.git',
    branch = 'master',
}
description = {
    summary  = "Net box connection pool for Tarantool",
    homepage = 'https://github.com/tarantool/connpool.git',
    license  = 'BSD',
}
dependencies = {
    'lua >= 5.1'
}
build = {
    type = 'builtin',

    modules = {
        ['connpool'] = 'connpool.lua'
    }
}

-- vim: syntax=lua
