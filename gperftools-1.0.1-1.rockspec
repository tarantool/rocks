package = 'gperftools'
version = '1.0.1-1'
source  = {
    url = 'git://github.com/tarantool/gperftools.git',
    tag = '1.0.1',
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
