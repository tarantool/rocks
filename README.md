<a href="http://tarantool.org">
	<img src="https://avatars2.githubusercontent.com/u/2344919?v=2&s=250" align="right">
</a>

# Tarantool Rocks - a package repository for Tarantool 1.6+

This repository contains precisely selected Lua and C modules which are fully
compatible with Tarantool and were approved to use by the
[Tarantool team][Tarantool].

Tarantool CI System automatically builds and publishes RPM and DEB packages for
all these modules.

The list of approved Tarantool packages is published on
[Tarantool rocks page][RocksPage].

## Table of contents
* [Prerequisites](#prerequisites)
* [Installing a module from LuaRocks](#installing-a-module-from-luarocks)
* [Reporting a bug](#reporting-a-bug)
* [Contributing](#contributing)
* [See also](#see-also)

## Prerequisites
 * [Tarantool] 1.6.8+ with header files (`tarantool` and `tarantool-dev`
   packages).
 * [LuaRocks] 2.1.x

## Installing a module from LuaRocks

Follow these steps:

1. Install LuaRocks.

   For example:

   ```bash
   # on Ubuntu/Debian, say this:
   $ sudo apt-get install luarocks
   
   # on CentOS/RHEL, install EPEL first
   # (example for RHEL/CentOS 7 64-Bit):
   $ wget http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-9.noarch.rpm
   $ rpm -ivh epel-release-7-9.noarch.rpm
   # then install luarocks package:
   $ yum update 
   $ yum install luarocks
   ```
   
   For a general procedure of installing LuaRocks on a Unix system, see
   [LuaRocks Quick Start Guide][LuaRocksQuickStart].

2. Add the Tarantool repository to the list of rock servers.

   Put `rocks.tarantool.org` in the file `.luarocks/config.lua`:

   ```bash
   $ mkdir /usr/bin/luarocks/.luarocks
   $ echo "rocks_servers = {[[http://rocks.tarantool.org/]]}" >> ~/usr/bin/luarocks/.luarocks/config.lua
   ```
   
Once these steps are complete, you can:

* search the repositories with

  ```bash
  $ luarocks search module-name
  ```

* add new modules to the local repository with

  ```bash
  $ luarocks install module-name --local
  ```
  
* load any module with

  ```
  tarantool> local-name = require('module-name')
  ```

* search locally for installed Lua or C modules using `package.path` or `package.cpath`

  ```
  tarantool> package.path
  ---
  - ./?.lua;./?/init.lua;/home/user/.luarocks/share/lua/5.1/?.lua;/home/user/.luarocks/share/lua/5.1/?/init.lua;/home/user/.luarocks/share/lua/?.lua;/home/user/.luarocks/share/lua/?/init.lua;/usr/local/share/tarantool/?.lua;/usr/local/share/tarantool/?/init.lua;/usr/share/tarantool/?.lua;/usr/share/tarantool/?/init.lua;/usr/local/share/lua/5.1/?.lua;/usr/local/share/lua/5.1/?/init.lua;/usr/share/lua/5.1/?.lua;/usr/share/lua/5.1/?/init.lua;
  ...
  
  tarantool> package.cpath
  ---
  - ./?.so;/home/user/.luarocks/lib/lua/5.1/?.so;/home/user/.luarocks/lib/lua/?.so;/usr/local/lib/x86_64-linux-gnu/tarantool/?.so;/usr/lib/x86_64-linux-gnu/tarantool/?.so;/usr/local/lib/tarantool/?.so;/usr/local/lib/x86_64-linux-gnu/lua/5.1/?.so;/usr/lib/x86_64-linux-gnu/lua/5.1/?.so;/usr/local/lib/lua/5.1/?.so;
  ...
  ```
  
  **Note:** Question-marks stand for the module name that was specified earlier
  when saying `require('module-name')`.

For example:

```bash
roman@work:~$ luarocks search http

Search results:
===============

Rockspecs and source rocks:
---------------------------

http
   scm-1 (rockspec) - http://rocks.tarantool.org/

roman@work:~$ luarocks install http --local
...
http scm-1 is now built and installed in /home/roman/.luarocks/ (license: BSD)

roman@work:~$ tarantool
localhost> client = require('http.client')
---
...
localhost> client
---
- request: 'function: 0x4107cfa0'
  post: 'function: 0x4107d090'
  get: 'function: 0x4107d050'
...
```

## Reporting a bug

If you have problems with module packaging,
[open a ticket in this repository][BugTracker].

In all other cases, please use upstream bug trackers.

## Contributing

This repository is moderated by the [Tarantool team][Tarantool]. Please make a
pull request with a new `.rockspec` file, and we will review it and decide on
listing your package on [Tarantool rocks page][TarantoolRocksList]
and including it in [official Tarantool images][TarantoolDocker] for Docker.

See README in [tarantool/modulekit][ModuleKit] repository for detailed
instructions on creating and publishing Tarantool modules in Lua
([luakit][Luakit] branch) and C ([ckit][CKit] branch).

We try to maintain high-quality standards to deliver the best experience for our
community. Here are basic quality requirements for new modules:

* Package is compatible with the latest Tarantool version on major platforms.
* Module is maintained and has a public git repository and a bug tracker
  (e.g. GitHub).
* Source code is published under an OSI approved open-source license.
* The repository has a minimal viable test suite.

If you feel unsure how to properly create a new `.rockspec` and/or contribute
your module, please [open a ticket in this repository][BugTracker]. Thanks!

## See also

* [Tarantool rocks page][RocksPage]
* [Templates for creating and publishing Tarantool modules][ModuleKit]
* [Tarantool repository at GitHub][Tarantool]
* [LuaRocks repository at GitHub][LuaRocks]

[Tarantool]: http://github.com/tarantool/tarantool
[RocksPage]: http://rocks.tarantool.org/
[BugTracker]: http://github.com/tarantool/rocks/issues
[ModuleKit]: http://github.com/tarantool/modulekit
[TarantoolRocksList]: http://tarantool.org/rocks.html
[TarantoolDocker]: http://github.com/tarantool/docker
[LuaRocks]: http://github.com/keplerproject/luarocks
[LuaRocksQuickStart]: http://luarocks.org/#quick-start
[Luakit]: http://github.com/tarantool/modulekit/tree/luakit
[Ckit]: http://github.com/tarantool/modulekit/tree/ckit
