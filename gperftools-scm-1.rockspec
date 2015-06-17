package = 'gperftools'
version = 'scm-1'
source  = {
    url    = 'git://github.com/tarantool/gperftools.git',
    branch = 'master',
}
description = {
    summary  = "Bindings for Google Performnace Tools CPU profiler",
    homepage = 'https://github.com/tarantool/gperftools',
    license  = 'BSD',
}
dependencies = {
    'lua >= 5.1'
}
external_dependencies = {
    GPERFTOOLS = {
        library = 'profiler'
    }
}
build = {
    type = 'builtin',
    modules = {
        ['gperftools'] = 'gperftools/init.lua',
        ['gperftools.cpu'] = 'gperftools/cpu.lua'
    }
}
-- vim: syntax=lua
