package = "argon2"
version = "3.0.1-1"
source = {
    url = "git://github.com/tarantool/argon2",
    tag = "3.0.1"
}
description = {
    summary = "Tarantool C binding for the Argon2 password hashing function",
    homepage = "https://github.com/thibaultcha/lua-argon2",
    license = "MIT"
}
dependencies = {
    "lua >= 5.1"
}
external_dependencies = {
    TARANTOOL = {
        header = "tarantool/module.h"
    }
}
build = {
    type = "cmake",
    variables = {
        CMAKE_BUILD_TYPE="RelWithDebInfo";
        CMAKE_INSTALL_PREFIX = "$(PREFIX)",
        TARANTOOL_INSTALL_LIBDIR = "lib",
        TARANTOOL_INSTALL_LUADIR = "lua",
    };
}
