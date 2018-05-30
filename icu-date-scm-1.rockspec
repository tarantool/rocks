package = "icu-date"
version = "scm-1"

source = {
    url = "git://github.com/tarantool/icu-date.git",
    branch = 'master',
}

description = {
    summary = "LuaJIT FFI bindings to ICU date/time",
    detailed = [[
        Module provides a robust date and time library
      that correctly and efficiently handles
      complexities of dealing with dates and times:
        - date and time formatting
        - date and time parsing
        - date and time arithmetic (adding and subtracting)
        - time zones
        - daylight saving time
        - leap years
        - ISO 8601 formatting and parsing
    ]],
    homepage = "https://github.com/tarantool/icu-date",
    license = "MIT",
}

dependencies = {
    'lua == 5.1',
}

build = {
    type = "builtin",
    modules = {
        ["icu-date.init"] = "icu-date.lua",
        ["icu-date.detect_icu_version_suffix"] = "icu-date/detect_icu_version_suffix.lua",
        ["icu-date.ffi_cdef"] = "icu-date/ffi_cdef.lua",
    },
}
