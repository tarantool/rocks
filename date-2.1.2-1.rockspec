package = "date"

version = "2.1.2-1"

source = {
   url = "git://github.com/tarantool/date.git",
   tag = "2.1.2",
}

description = {
   summary = "Date & Time module for Lua 5.x",
   detailed = [[
      Pure Lua Date & Time module for Lua 5.x featuring date and time string
      parsing, time addition & subtraction, time span calculation, support for
      ISO 8601 dates, local time support, strftime-like formatting.
   ]],
   license = "MIT",
   homepage = "https://github.com/tarantool/date",
}

dependencies = {
   "lua >= 5.0, < 5.4 "
}

build = {
   type = "builtin",
   modules = {
      date = "date.lua"
   }
}