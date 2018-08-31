package = "websocket"
version = "0.0.1-1"

source = {
    url = "git://github.com/tarantool/websocket.git",
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    tag = '0.0.1',
=======
    branch = '0.1.1',
>>>>>>> websocket: 0.0.1
=======
    tag = '0.1.1',
>>>>>>> websocket: fixed rockspec
=======
    tag = '0.0.1',
>>>>>>> websocket: fixed rockspec again
}

description = {
    summary = "Lua websocket implementation",
    detailed = [[
        Provides websocket server and client
          - socket style api
          - custom http handshake
          - ping/pong
          - graceful shutdown
    ]],
    homepage = "https://github.com/tarantool/websocket",
    license = "MIT",
}

dependencies = {
    'lua == 5.1',
}

build = {
    type = "builtin",
    modules = {
        ["websocket.init"] = "websocket.lua",
        ["websocket.ssl"] = "websocket/ssl.lua",
        ["websocket.frame"] = "websocket/frame.lua",
        ["websocket.handshake"] = "websocket/handshake.lua",
        ["websocket.utf8_validator"] = "websocket/utf8_validator.lua",
    },
}
