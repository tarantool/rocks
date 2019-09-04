package = 'cartridge-cli'
version = '1.0.0-1'
source = {
    url = 'git+https://github.com/tarantool/cartridge-cli.git',
    tag = '1.0.0',
}

dependencies = {
    'lua >= 5.1',
}

build = {
    type = 'none',
    copy_directories = {'templates'},

    install = {
        bin = {
            ['cartridge'] = 'cartridge'
        },
    }
}
