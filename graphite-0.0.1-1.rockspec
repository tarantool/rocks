package = 'graphite'
version = '0.0.1-1'
source  = {
    url = 'git://github.com/tarantool/graphite.git';
    tag = '0.0.1';
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
