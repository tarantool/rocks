package = 'shard'
version = '2.0-1'
source  = {
    url = 'git://github.com/tarantool/shard.git',
    tag = '2.0',
}
description = {
    summary  = "Lua sharding for Tarantool",
    homepage = 'https://github.com/tarantool/shard.git',
    license  = 'BSD',
}
dependencies = {
    'lua >= 5.1';
    'connpool >= 1.1';
}
build = {
    type = 'cmake';
    variables = {
        CMAKE_BUILD_TYPE="RelWithDebInfo";
        TARANTOOL_INSTALL_LIBDIR="$(LIBDIR)";
        TARANTOOL_INSTALL_LUADIR="$(LUADIR)";
    };
}

-- vim: syntax=lua
