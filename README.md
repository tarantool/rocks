Tarantool Rocks
===============

Packages repository for [Tarantool] - efficient NoSQL database and a Lua application server.

The repository contains precisely selected Lua modules which are fully
compatible with Tarantool and were approved to use by [Tarantool Team][Tarantool].
Check [the list of available package][Available Packages].

Tarantool CI System automatically builds and publishes RPM and DEB packages for all modules. Please consult [Tarantool] web-site for further information. 

## Prerequsites

 * [Tarantool] 1.6.8+ with header files (tarantool and tarantool-dev packages).
 * [LuaRocks] 2.1.x

### Install Luarocks

Install [LuaRocks] using your favorite package manager:

```
apt-get install luarocks
```

### Configure LuaRocks

Add http://rocks.tarantool.org/ to the list of upstream servers:

```shell
mkdir -p ~/.luarocks/
cat > ~/.luarocks/config.lua <<EOF
rocks_servers = {
    [[http://rocks.tarantool.org/]]
}
EOF
```

## Usage

Type `luarocks search <search string>` in shell to search modules in repositories.

Type `luarocks install <modulename>` in shell to install or update module. 

Use ```somevar = require('<modulename>')``` in Tarantool to load `<modulename>` module.

Example:

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

## Bug Reporting

Open tickets in this repository if you have problems with module packaging.
In all other cases please use upstream bug trackers.

## Contributing

The repository is moderated by [Tarantool Team][Tarantool]. Please make a pull request with a new ``.rockspec`` file and we will try to review your request quickly.

New modules must satisfy the following necessary but not sufficient conditions:

+ Package is compatible with the latest Tarantool version on major platforms
+ Module is maintained and has a public git repository and a bug tracker (e.g. GitHub)
+ Source code is published under an OSI approved open-source license
+ The repository has minimal viable test suite

Tarantool Team tries to maintain high-quality standards to deliver the best experience for our community. 
If you are not sure how to properly create a new `.rockspec` and/or contribute your module, please [open a ticket][Bug Tracker]. Thanks!

## See Also

* [Available Packages]
* [Tarantool]
* [Documentation]
* [LuaRocks]

[Tarantool]: http://github.com/tarantool/tarantool
[LuaRocks]: http://github.com/keplerproject/luarocks
[Available Packages]: http://rocks.tarantool.org/
[Documentation]: https://github.com/tarantool/http/wiki
[Bug Tracker]: https://github.com/tarantool/rocks/issues
