package = 'watchdog'
version = 'scm-1'
source  = {
    url    = 'git://github.com/tarantool/watchdog.git',
    branch = 'master',
}
description = {
    summary  = "Simple watchdog module for Tarantool",
    homepage = 'https://github.com/tarantool/watchdog',
    license  = 'BSD'
}

dependencies = {
    'lua >= 5.1'
}

build = {
    type = 'cmake',
    variables = {
        CMAKE_BUILD_TYPE = "RelWithDebInfo",
        CMAKE_INSTALL_PREFIX = "$(PREFIX)",
        TARANTOOL_INSTALL_LIBDIR = "lib",
        TARANTOOL_INSTALL_LUADIR = "lua",
    }
}
-- vim: syntax=lua
