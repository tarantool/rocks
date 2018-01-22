package = 'tarantool-curl'
version = '2.3.1-1'

source  = {
    url = 'git://github.com/tarantool/curl.git';
    tag = '2.3.1';
}

description = {
    summary  = "libcurl bindings for tarantool";
    detailed = [[
    This module is a set of bindings for libcurl that allows you to use most of standard HTTP client functions.
    ]];
    homepage = 'https://github.com/tarantool/curl.git';
    license  = 'BSD';
    maintainer = "Konstantin Nazarov <racktear@tarantool.org>";
}

dependencies = {
    'lua >= 5.1';
}

build = {
    type = 'cmake',
    variables = {
        CMAKE_BUILD_TYPE="RelWithDebInfo",
        TARANTOOL_INSTALL_LIBDIR="$(LIBDIR)",
        TARANTOOL_INSTALL_LUADIR="$(LUADIR)",
    },
}
-- vim: syntax=lua ts=4 sts=4 sw=4 et
