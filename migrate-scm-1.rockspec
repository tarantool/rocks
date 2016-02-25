package = 'migrate'
version = 'scm-1'
source  = {
    url    = 'git://github.com/bigbes/xlog.git',
    branch = 'master',
}
description = {
    summary  = "Tarantool module for Migrating from 1.5 version to 1.6",
    homepage = 'https://github.com/bigbes/xlog/',
    license  = 'BSD',
}
dependencies = {
    'lua >= 5.1'
}
external_dependencies = {
    TARANTOOL = {
        header = "tarantool/module.h"
    },
    SMALL = {
        header = "small/ibuf.h"
    },
    MSGPUCK = {
        header = "msgpuck/msgpuck.h"
    }
}

build = {
    type = 'builtin',

    modules = {
        ['migrate.xlog.internal'] = {
            sources = {
                'migrate/xlog/xlog.c',
                'migrate/xlog/tuple.c',
                'migrate/xlog/table.c',
                'migrate/xlog/mpstream.c',
                'third_party/tarantool-c/tnt/tnt_buf.c',
                'third_party/tarantool-c/tnt/tnt_call.c',
                'third_party/tarantool-c/tnt/tnt_delete.c',
                'third_party/tarantool-c/tnt/tnt_enc.c',
                'third_party/tarantool-c/tnt/tnt_insert.c',
                'third_party/tarantool-c/tnt/tnt_iter.c',
                'third_party/tarantool-c/tnt/tnt_mem.c',
                'third_party/tarantool-c/tnt/tnt_ping.c',
                'third_party/tarantool-c/tnt/tnt_reply.c',
                'third_party/tarantool-c/tnt/tnt_request.c',
                'third_party/tarantool-c/tnt/tnt_select.c',
                'third_party/tarantool-c/tnt/tnt_stream.c',
                'third_party/tarantool-c/tnt/tnt_tuple.c',
                'third_party/tarantool-c/tnt/tnt_update.c',
                'third_party/tarantool-c/tntrpl/tnt_dir.c',
                'third_party/tarantool-c/tntrpl/tnt_log.c',
                'third_party/tarantool-c/tntrpl/tnt_rpl.c',
                'third_party/tarantool-c/tntrpl/tnt_snapshot.c',
                'third_party/tarantool-c/tntrpl/tnt_xlog.c'
            },
            incdirs = {
                "$(TARANTOOL_INCDIR)/tarantool",
                "$(MSGPUCK_INCDIR)/msgpuck",
                "$(SMALL_INCDIR)",
                "third_party/tarantool-c/include",
                "./"
            },
            libraries = {
                'small'
            }
        },
        ['migrate.xlog'] = 'migrate/xlog/init.lua',
        ['migrate'] = 'migrate/init.lua',
        ['migrate.xdir'] = 'migrate/xdir.lua',
        ['migrate.utils.checktype'] = 'migrate/utils/checktype.lua',
        ['migrate.utils'] = 'migrate/utils/init.lua'
    }
}

-- vim: syntax=lua
