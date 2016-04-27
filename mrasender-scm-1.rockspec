package = 'mrasender'
version = '1.0.1'

source  = {
    url    = 'git://github.com/mailru/mrasender.git';
    branch = 'master';
}

description = {
    summary  = "Send message to Mail.Ru Agent from Tarantool";
    detailed = [[
    Send message to Mail.Ru Agent from Tarantool
    ]];
    homepage = 'https://github.com/mailru/mrasender.git';
    license  = 'BSD';
    maintainer = "Maxim Glekov <m.glekov@corp.mail.ru>";
}

dependencies = {
    'lua >= 5.1';
}

external_dependencies = {
    TARANTOOL = {
        header = 'tarantool/module.h'
    };
}

build = {
    type = 'builtin',

    modules = {
        ['mrasender'] = 'mrasender/init.lua';
        ['mrasender.functions'] = 'mrasender/functions.lua';
        ['mrasender.cfunctions'] = {
            incdirs = {
                '$(TARANTOOL_INCDIR)';
            };
            sources = 'mrasender/cfunctions.c';
        }
    }
}
-- vim: syntax=lua ts=4 sts=4 sw=4 et
