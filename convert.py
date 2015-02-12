#!/usr/bin/env python

import codecs
import jinja2
import docutils.core
import BeautifulSoup as bs

def fromrst_to_string(objstring):
    return docutils.core.publish_parts(source=objstring, writer_name='html')['fragment']

env = {
    'page': {
        'title': 'Tarantool - Rocks',
        'slug': 'rocks',
        'rockspecs': [],
        'content': fromrst_to_string("""
.. code-block:: lua

  mkdir ~/.luarocks
  echo "rocks_servers = {[[http://rocks.tarantool.org/]]}" >> ~/.luarocks/config.lua
""")
    }
}

envir = jinja2.Environment( loader = jinja2.DictLoader({
    'base'      : codecs.open('templates/base', 'r', encoding='utf-8').read(),
    'menu'      : codecs.open('templates/menu', 'r', encoding='utf-8').read(),
    'rocks.html': codecs.open('templates/rocks.html', 'r', encoding='utf-8').read()
}) )
tds = bs.BeautifulSoup(codecs.open('index.html', 'r', encoding='utf-8').read()).body.table.findAll('td')

for i in range(len(tds)/3):
    env['page']['rockspecs'].append({
        'name'    : tds[i * 3].contents[1].contents[1].text,
        'text'    : tds[i * 3].contents[1].contents[2],
        'git_link': tds[i * 3].font.findAll('a')[0].attrs[0][1],
        'hp_link' : tds[i * 3].font.findAll('a')[1].attrs[0][1],
        'license' : tds[i * 3].font.contents[3][3:],
        'version' : tds[i * 3 + 1].contents[0][1:-7],
        'rockspec_link' : tds[i * 3 + 1].contents[1].attrs[0][1]
    })

codecs.open('index.html', 'w', encoding='utf-8').write(envir.get_template('rocks.html').render(**env))
