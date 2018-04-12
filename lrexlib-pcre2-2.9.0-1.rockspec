external_dependencies = {
  PCRE2 = {
    header = "pcre2.h",
    library = "pcre2-8",
  },
}
package = "Lrexlib-PCRE2"
build = {
  modules = {
    rex_pcre2 = {
      incdirs = {
        "$(PCRE2_INCDIR)",
      },
      defines = {
        "VERSION=\"2.9.0\"",
        "LUA_COMPAT_5_2",
        "PCRE2_CODE_UNIT_WIDTH=8",
      },
      sources = {
        "src/common.c",
        "src/pcre2/lpcre2.c",
        "src/pcre2/lpcre2_f.c",
      },
      libdirs = {
        "$(PCRE2_LIBDIR)",
      },
      libraries = {
        "pcre2-8",
      },
    },
  },
  type = "builtin",
}
description = {
  detailed = "Lrexlib is a regular expression library for Lua 5.1-5.3, which\
provides bindings for several regular expression libraries.\
This rock provides the PCRE2 bindings.",
  summary = "Regular expression library binding (PCRE2 flavour).",
  homepage = "http://github.com/rrthomas/lrexlib",
  license = "MIT/X11",
}
version = "2.9.0-1"
dependencies = {
  "lua >= 5.1",
}
source = {
  url = "git://github.com/rrthomas/lrexlib.git",
  tag = "rel-2-9-0",
}
