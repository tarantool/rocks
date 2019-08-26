package = 'frontend-core'
version = '5.0.2-1'
source  = {
    url = 'git+https://github.com/tarantool/frontend-core.git',
    tag = '5.0.2',
}
dependencies = {
    'lua >= 5.1',
}
build = {
    type = 'make';
    install = {
        lua = {
            ['pack-front'] = 'pack-front.lua',
            ['frontend-core'] = 'frontend-core.lua',
            -- ['frontend-core.bundle'] -- installed with make
        },
    },
    install_variables = {
        INST_LUADIR="$(LUADIR)",
    },

}
