OFFSET = 0x8000F800

import sys, os, csv

with open('namedfuncs.csv', newline='') as csvfile:
    spamreader = csv.reader(csvfile, delimiter=',', quotechar='"')
    for row in spamreader:
        nm = row[0]
        addr = int(row[1], 16)
        if addr < 0x10000000:
            strs = "./rename_sym.sh func_%08X %s" % (addr + OFFSET, nm)
            os.system(strs)
