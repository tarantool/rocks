package = 'synchronized'
version = 'scm-1'

source = {
    url = 'git://github.com/tarantool/synchronized.git';
}

description = {
    summary  = "Critical sections for Lua";
    detailed = [[
The `synchronized` function ensures that one fiber does not enter
a critical section of code while another fiber is in the critical section.
If another fiber tries to enter a critical section, it will wait, block,
until the key is released.
    ]];
    homepage = 'https://github.com/tarantool/synchronized.git';
    maintainer = "Roman Tsisyk <roman@tarantool.org>";
    license  = 'BSD2';
}

dependencies = {
    'lua == 5.1';
}

build = {
    type = 'builtin';
    modules = {
        ['synchronized'] = 'synchronized/init.lua';
    }
}
-- vim: syntax=lua ts=4 sts=4 sw=4 et
