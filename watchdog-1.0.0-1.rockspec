package = 'watchdog'
version = '1.0.0-1'
source  = {
    url = 'git://github.com/tarantool/watchdog.git',
    tag = '1.0.0',
}
description = {
    summary  = "Simple watchdog module for Tarantool",
    homepage = 'https://github.com/tarantool/watchdog',
    maintainer = "Yaroslav Dynnikov <yaroslav.dynnikov@gmail.com>",
    license  = 'BSD2'
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
