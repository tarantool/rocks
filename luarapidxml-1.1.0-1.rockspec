package = 'luarapidxml'
version = '1.1.0-1'
source  = {
    url    = 'git://github.com/tarantool/luarapidxml.git';
    tag = '1.1.0';
}

description = {
    summary  = "Fast XML parsing module for Tarantool";
    homepage = 'https://github.com/tarantool/luarapidxml',
    maintainer = "Yaroslav Dynnikov <yaroslav.dynnikov@gmail.com>",
    license  = 'BSD2'
}

dependencies = {
    'tarantool',
    'lua == 5.1'
}

external_dependencies = {
    TARANTOOL = {
        header = 'tarantool/module.h';
    };
}

build = {
    type = 'cmake';
    variables = {
        CMAKE_BUILD_TYPE="RelWithDebInfo";
        TARANTOOL_DIR="$(TARANTOOL_DIR)";
        TARANTOOL_INSTALL_LIBDIR="$(LIBDIR)";
        TARANTOOL_INSTALL_LUADIR="$(LUADIR)";
    };
}
