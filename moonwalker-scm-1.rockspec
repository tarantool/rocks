package = 'moonwalker'
version = 'scm-1'
source  = {
    url    = 'git://github.com/tarantool/moonwalker.git',
    branch = 'master',
}
description = {
    summary  = "Iterate over box.space and make updates without freezing db",
    homepage = 'https://github.com/tarantool/moonwalker',
    license  = 'BSD',
}
dependencies = {
    'lua >= 5.1'
}
build = {
    type = 'builtin',
    modules = {
        ['moonwalker'] = 'moonwalker.lua'
    }
}

-- vim: syntax=lua
