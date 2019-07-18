import os
import sys
import subprocess


filenames = os.listdir(sys.argv[1])

for filename in filenames:
    if not os.path.isfile(filename):
        print 'Not a file: \"', filename, '\"'
    else:
        if not os.path.splitext(filename)[1] == '.trg':
            print 'Not a config file? \"', filename, '\" (', os.path.splitext(filename), ')'
        else:
            filename_new = os.path.splitext(filename)[0] + '_new' + os.path.splitext(filename)[1]
            f_new = open(filename_new,'w')
            with open(filename,'r') as f:
                for line in f:
                    line_new = line.replace(sys.argv[2],sys.argv[3])
                    f_new.write(line_new)
            f_new.close()
            #subprocess.call('mv ' + filename_new + ' ' + filename, shell=True)



