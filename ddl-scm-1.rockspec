package = 'ddl'
version = 'scm-1'
source  = {
    branch = 'master',
    url = 'git+https://github.com/tarantool/ddl.git'
}

dependencies = {
    'lua >= 5.1';
    'tarantool';
}

description = {
    summary = 'Tarantool opensource DDL module';
    homepage = 'https://github.com/tarantool/ddl';
    detailed = [[
        A ready-to-use Lua module ddl for tarantool.
        ]];
}

external_dependencies = {
    TARANTOOL = {
        header = 'tarantool/module.h',
    },
}

build = {
    type = 'cmake',
    variables = {
        TARANTOOL_DIR = '$(TARANTOOL_DIR)',
        TARANTOOL_INSTALL_LIBDIR = '$(LIBDIR)',
        TARANTOOL_INSTALL_LUADIR = '$(LUADIR)',
    },
}
