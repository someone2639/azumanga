OFFSET = 0x8000F800

import sys, os, csv

# with open('namedfuncs.csv', newline='') as csvfile:
#     spamreader = csv.reader(csvfile, delimiter=',', quotechar='"')
#     for row in spamreader:
#         nm = row[0]
#         addr = int(row[1], 16)
#         if addr < 0x10000000:
#             strs = "./rename_sym.sh func_%08X %s" % (addr + OFFSET, nm)
#             os.system(strs)


with open(sys.argv[1], newline='') as csvfile:
    spamreader = csv.reader(csvfile, delimiter=',', quotechar='"')
    rows = [i for i in spamreader][1:]
    for row in rows:
        nm = row[0]
        addr = int(row[1], 16)
        typ = row[2]

        match typ:
            case "Function":
                if addr < 0x10000000:
                    strs = "%s = 0x%08X; // type:func" % (nm, addr + OFFSET)
                    print(strs)
            case "Instruction Label":
                continue
            case "Data Label":
                continue
            case "Thunk Function":
                continue
            case _:
                print(typ)


