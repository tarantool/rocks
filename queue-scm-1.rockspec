package = "queue"
version = "scm-1"
source = {
    url = "git://github.com/tarantool/queue.git",
    branch = "master",
}
description = {
    summary = "Queue Manager for Tarantool",
    homepage = "https://github.com/tarantool/queue",
    license = "Artistic",
    maintainer = "Roman Tsisyk <roman@tarantool.org>"
}
dependencies = {
    "lua >= 5.1" -- actually tarantool < 1.6
}
build = {
    type = "builtin",
    modules = {
        ["box.queue"] = "init.lua",
    }
}

-- vim: syntax=lua
