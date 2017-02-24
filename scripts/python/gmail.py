#!/usr/bin/env python

from urllib.request import FancyURLopener
import configparser

config = configparser.ConfigParser()
config.read('/root/.config/conky_gmailrc')
email = config['configuration']['email']
password = config['configuration']['password']
print(email)

url = 'https://%s:%s@mail.google.com/mail/feed/atom' % (email, password)

opener = FancyURLopener()
page = opener.open(url)

contents = page.read().decode('utf-8')

ifrom = contents.index('<fullcount>') + 11
ito   = contents.index('</fullcount>')

fullcount = contents[ifrom:ito]
f = open('/tmp/gmail.log', 'w')
f.write(fullcount)
print(fullcount)
