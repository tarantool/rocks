external_dependencies = {
  PCRE = {
    header = "pcre.h",
    library = "pcre",
  },
}
package = "Lrexlib-PCRE"
build = {
  modules = {
    rex_pcre = {
      incdirs = {
        "$(PCRE_INCDIR)",
      },
      defines = {
        "VERSION=\"2.9.0\"",
        "LUA_COMPAT_5_2",
        "PCRE2_CODE_UNIT_WIDTH=8",
      },
      sources = {
        "src/common.c",
        "src/pcre/lpcre.c",
        "src/pcre/lpcre_f.c",
      },
      libdirs = {
        "$(PCRE_LIBDIR)",
      },
      libraries = {
        "pcre",
      },
    },
  },
  type = "builtin",
}
description = {
  detailed = "Lrexlib is a regular expression library for Lua 5.1-5.3, which\
provides bindings for several regular expression libraries.\
This rock provides the PCRE bindings.",
  summary = "Regular expression library binding (PCRE flavour).",
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
