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

external_dependencies = {
    TARANTOOL = {
        header = 'tarantool/module.h'
    };
    MSGPUCK   = {
        header = 'msgpuck/msgpuck.h'
    };
}

build = {
    type = 'builtin',

    modules = {
        ['cbench'] = 'cbench/init.lua';
        ['cbench.bench'] = {
            incdirs = {
                '$(TARANTOOL_INCDIR)';
                '$(MSGPUCK_INCDIR)';
            };
            sources = 'cbench/bench.c';
        }
    }
}
-- vim: syntax=lua ts=4 sts=4 sw=4 et
