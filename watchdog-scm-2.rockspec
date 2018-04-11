package = 'watchdog'
version = 'scm-2'
source  = {
    url    = 'git://github.com/tarantool/watchdog.git',
    branch = 'master',
}
description = {
    summary  = "Simple watchdog module for Tarantool",
    homepage = 'https://github.com/tarantool/watchdog',
    maintainer = "Yaroslav Dynnikov <yaroslav.dynnikov@gmail.com>",
    license  = 'BSD2'
}

dependencies = {
    'tarantool',
    'lua >= 5.1',
}

external_dependencies = {
    TARANTOOL = {
        header = 'tarantool/module.h';
    };
}

build = {
    type = 'cmake',
    variables = {
        CMAKE_BUILD_TYPE = "RelWithDebInfo",
        TARANTOOL_DIR='$(TARANTOOL_DIR)',
        TARANTOOL_INSTALL_LIBDIR = "$(LIBDIR)",
        TARANTOOL_INSTALL_LUADIR = "$(LUADIR)",
    }
}
-- vim: syntax=lua
