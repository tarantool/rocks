package = 'cron-parser'

version = 'scm-1'

source  = {
    url = 'git://github.com/tarantool/cron-parser.git',
    branch = 'master'
}

description = {
    summary  = 'Cron Parser Lua Wrapper',
    detailed = [[
    cron_parser is a Lua wrapper of ccronexpr C library. It parses a
    cron-format schedule and calculates the nearest event date.
    ]],
    homepage = 'https://github.com/tarantool/cron-parser',
    maintainer = 'Michael Siomkin <msiomkin@mail.ru>, Yaroslav Dynnikov <yaroslav.dynnikov@gmail.com>',
    license = 'Apache 2.0'
}

dependencies = {
    'lua >= 5.1'
}

build = {
    type = 'builtin',
    modules = {
        ['cron.ccronexpr'] = {
            sources = {'ccronexpr/ccronexpr.c'},
            incdirs = {'ccronexpr'},
        },
        ['cron.parser'] = 'cron-parser.lua',
    }
}

-- vim: syntax=lua
