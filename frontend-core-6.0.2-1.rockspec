package = 'frontend-core'
version = '6.0.2-1'
source  = {
    url = 'git+https://github.com/tarantool/frontend-core.git',
    tag = '6.0.2',
}
dependencies = {
    'lua >= 5.1',
}
build = {
    type = 'make';
    install = {
        lua = {
            ['frontend-core'] = 'frontend-core.lua',
            -- ['frontend-core.bundle'] -- installed with make
        },
    },
    install_variables = {
        INST_LUADIR="$(LUADIR)",
    },

}
