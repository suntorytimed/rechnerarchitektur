#!/usr/bin/python -Es
# -*- coding: utf-8 -*-
import random

out=[]
out.truncate(100 * 1024 * 1024)

random.seed()

for i in range(out):
    out[i] = random.randint(-127,127)


with open("testfile.test", "r+") as f:
    mm = mmap.mmap(f.fileno(), 0)
    print mm.size()

    try:
        loop(mm)
    except ValueError:
        print "Write to file finished."

    mm.flush()
    mm.close()