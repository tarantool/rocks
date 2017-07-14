package = 'cbench'
version = 'scm-1'

source  = {
    url    = 'git://github.com/tarantool/cbench.git';
    branch = 'master';
}

description = {
    summary  = "Simple tool to benchmark Tarantool internal API";
    detailed = [[
    Tarantool C Bench is a simple tool to benchmark Tarantool internal API.
    Tarantool (http://tarantool.org) is an efficient in-memory NoSQL database
    and a Lua application server, blended.

    The tool is used internally by Tarantool team to check for performance
    regressions during development cycle. All workloads are written in C++.
    Lua (FFI) is only used to load & run workloads and display results (does
    not affect performance).
    ]];
    homepage = 'https://github.com/tarantool/cbench.git';
    license  = 'BSD';
    maintainer = "Roman Tsisyk <roman@tarantool.org>";
}

dependencies = {
    'lua >= 5.1';
}

build = {
    type = 'cmake';
    variables = {
        CMAKE_BUILD_TYPE="RelWithDebInfo";
        TARANTOOL_INSTALL_LIBDIR="$(LIBDIR)";
        TARANTOOL_INSTALL_LUADIR="$(LUADIR)";
    };
}
-- vim: syntax=lua ts=4 sts=4 sw=4 et
