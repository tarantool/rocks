package = 'tarantool-curl'
version = 'scm-1'

source  = {
    url    = 'git://github.com/tarantool/curl.git';
    branch = 'master';
}

description = {
    summary  = "libcurl bindings for tarantool";
    detailed = [[
    This module is a set of bindings for libcurl that allows you to use mose of standard HTTP client functions.
    ]];
    homepage = 'https://github.com/tarantool/curl.git';
    license  = 'BSD';
    maintainer = "Konstantin Nazarov <racktear@tarantool.org>";
}

dependencies = {
    'lua >= 5.1';
}

build = {
    type = 'cmake'
}
-- vim: syntax=lua ts=4 sts=4 sw=4 et
