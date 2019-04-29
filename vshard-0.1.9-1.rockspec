package = 'vshard'
version = '0.1.9-1'
source  = {
    url = 'git://github.com/tarantool/vshard.git',
    tag = '0.1.9',
}
description = {
    summary  = 'The new generation of sharding based on virtual buckets',
    homepage = 'https://github.com/tarantool/vshard.git',
    license  = 'BSD',
}
dependencies = {
    'lua >= 5.1';
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

-- vim: syntax=lua
