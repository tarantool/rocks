package = 'graphite'
version = 'scm-1'
source  = {
    url    = 'git://github.com/tarantool/graphite.git';
    branch = 'master';
}
description = {
    summary  = "Export Tarantool application metrics to Graphite";
    homepage = 'https://github.com/tarantool/graphite.git';
    license  = 'BSD2';
}
dependencies = {
    'lua == 5.1';
}
build = {
    type = 'builtin';
    modules = {
        ['graphite'] = 'graphite/init.lua';
    }
}
-- vim: syntax=lua ts=4 sts=4 sw=4 et