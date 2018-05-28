package = 'ldecnumber'

version = 'scm-1'

source  = {
    url    = 'git://github.com/tarantool/ldecnumber.git';
    branch = 'master';
}

description = {
    summary  = "Decimal Arithmetic package for Tarantool";
    detailed = [[
    The ldecNumber package implements the General Decimal
    Arithmetic Specification. This specification defines
    a decimal arithmetic which meets the requirements of
    commercial, financial, and human-oriented applications.
    It also matches the decimal arithmetic in the IEEE 754
    Standard for Floating Point Arithmetic.
    ]];
    homepage = 'https://github.com/tarantool/ldecnumber';
    maintainer = "Michael Filonenko <filonenko.mikhail@gmail.com>";
    license  = 'ICU1.8.1';
}

dependencies = {
    'lua == 5.1';
}

external_dependencies = {
    TARANTOOL = {
        header = 'tarantool/module.h';
    };
}

build = {
    type = 'cmake';
    variables = {
        CMAKE_BUILD_TYPE="RelWithDebInfo";
        TARANTOOL_DIR="$(TARANTOOL_DIR)";
        TARANTOOL_INSTALL_LIBDIR="$(LIBDIR)";
        TARANTOOL_INSTALL_LUADIR="$(LUADIR)";
    };
}
-- vim: syntax=lua ts=4 sts=4 sw=4 et
