package = 'connpool'
version = '1.1.1-1'
source  = {
    url = 'git://github.com/tarantool/connpool.git',
    tag = '1.1.1',
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
