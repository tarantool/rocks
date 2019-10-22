package = 'membership'
version = '2.2.0-1'
source  = {
    url = 'git+https://github.com/tarantool/membership.git',
    tag = '2.2.0',
}

description = {
    summary = 'Membership library for Tarantool based on a gossip protocol',
    homepage = 'https://github.com/tarantool/membership',
    license = 'BSD',
}

dependencies = {
    'lua >= 5.1',
    'checks ~> 3',
}

external_dependencies = {
    TARANTOOL = {
        header = 'tarantool/module.h',
    },
}

build = {
    type = 'cmake',
    variables = {
        version = '2.2.0-1',
        BUILD_DOC = '$(BUILD_DOC)',
        TARANTOOL_DIR = '$(TARANTOOL_DIR)',
        TARANTOOL_INSTALL_LIBDIR = '$(LIBDIR)',
        TARANTOOL_INSTALL_LUADIR = '$(LUADIR)',
    },
    install = {
        lua = {
            ['membership'] = 'membership.lua',
            ['membership.events'] = 'membership/events.lua',
            ['membership.members'] = 'membership/members.lua',
            ['membership.options'] = 'membership/options.lua',
            ['membership.network'] = 'membership/network.lua',
        }
    },
    copy_directories = {"doc"},
}
