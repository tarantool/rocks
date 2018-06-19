package = 'smtp'
version = '0.0.2-1'
source  = {
    url = 'git://github.com/tarantool/smtp.git',
    tag = '0.0.2',
}

description = {
    summary  = 'SMTP client module for Tarantool',
    detailed = [[
        A smtp module to send email via smtp servers.
    ]],
    homepage = 'https://github.com/tarantool/smtp.git',
    maintainer = 'Roman Tsisyk <roman@tarantool.org>',
    license  = 'BSD2',
}

dependencies = {
    'lua == 5.1',
}

external_dependencies = {
    TARANTOOL = {
        header = 'tarantool/module.h',
    },
}

build = {
    type = 'cmake',
    variables = {
        CMAKE_BUILD_TYPE='RelWithDebInfo',
        TARANTOOL_DIR='$(TARANTOOL_DIR)',
        TARANTOOL_INSTALL_LIBDIR='$(LIBDIR)',
        TARANTOOL_INSTALL_LUADIR='$(LUADIR)',
    },
}
