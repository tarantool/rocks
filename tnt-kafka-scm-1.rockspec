package = "tnt-kafka"
version = "scm-1"
source = {
    url = "git://github.com/tarantool/tnt-kafka.git",
    branch = 'master',
}
description = {
    summary = "Kafka library for Tarantool",
    homepage = "https://github.com/tarantool/tnt-kafka",
    license = "Apache",
}
dependencies = {
    "lua >= 5.1" -- actually tarantool > 1.6
}
external_dependencies = {
    TARANTOOL = {
        header = 'tarantool/module.h'
    },
    RDKAFKA = {
        header = 'librdkafka/rdkafka.h'
    }
}
build = {
    type = 'cmake';
    variables = {
        CMAKE_BUILD_TYPE="RelWithDebInfo",
        TARANTOOL_DIR="$(TARANTOOL_DIR)",
        TARANTOOL_INSTALL_LIBDIR="$(LIBDIR)",
        TARANTOOL_INSTALL_LUADIR="$(LUADIR)"
    }
}
