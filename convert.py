#!/usr/bin/env python

import codecs
import jinja2
import BeautifulSoup as bs

env = {
    'page': {
        'slug': 'rocks',
        'rockspecs': []
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
