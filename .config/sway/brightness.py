#!/usr/bin/python

import os, sys

path = '/sys/class/backlight/intel_backlight/brightness'
file = open(path, 'r')
value = int(file.read())
file.close()

if len(sys.argv) == 1:
    print(value)
else:
    file = open(path, 'w')
    arg = sys.argv[1]

    if arg == "up":
        value += 20
    elif arg == "down":
        value -= 20
    else:
        print('Unknown arg')
    
    file.write(str(value))
    file.close()

