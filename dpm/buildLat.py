import os
import sys


f = open(sys.argv[1],'r')
lines = f.readlines()

for i in range (135,156):
    print 'do lat ', i
    fo = open(os.path.splitext(sys.argv[1])[0] + '-Lat' + str(i) + os.path.splitext(sys.argv[1])[1] ,'w')
    for line in lines:
        l = line.replace('config/rce_config.xml','config/timing_in/rce_config_Lat' + str(i) + '.xml')
        fo.write(l)
    fo.close
