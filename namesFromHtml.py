#!/usr/bin/env python2
from BeautifulSoup import BeautifulSoup as bs

s = bs(open("names.html").read())
names = [d.text.split(" ")[0].upper() for d in s.findAll("div", {"class":"fsl fwb fcb"})]
print "saysTHANKS!".join(names) + "saysTHANKS!"
