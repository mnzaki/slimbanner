#!/usr/bin/env python2
import sys
import re

data = open(sys.argv[1]).read()
w, h, bpp = re.findall(r'\s\s(\d+),\s(\d+),\s(\d+)', data)[0]
w = int(w)
h = int(h)
bpp = int(bpp)
zeros = r'\377' * bpp
ones = r'\0' * bpp
data = "".join(re.findall(r'"(.*)"', data))
data = data.replace(zeros, "0")
data = data.replace(ones, "1")

i = 0
while i < w*h:
    print data[i:i+w]
    i = i+w

print "One Hexadecimal Integer: %x" % int("1"+data, 2)
i = 0
maxi = w * h
buf = ""
bs = 32
while i < maxi:
    c = data[i:i+bs]
    if maxi-i < bs:
        c = c + "0" * ((maxi-i)/4)
    c = int(c, 2)
    buf += "0x%x," % c
    i += bs

print buf 

