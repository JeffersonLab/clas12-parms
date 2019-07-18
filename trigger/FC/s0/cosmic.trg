#
# FADC's
#

FADC250_CRATE all

FADC250_SLOT all

# old v1495 (without extra delay)
#FADC250_W_OFFSET  1880

# v1495 trigger connected to local TI
#FADC250_W_OFFSET  7300

#TS: 7900 (start at 40; 7800 start at 20)
FADC250_W_OFFSET  7900

FADC250_CRATE end




#
# trigger supervisor
#

TS_CRATE trig1

#TS_BLOCK_LEVEL 40
#TS_BUFFER_LEVEL 8

TS_BLOCK_LEVEL 1
TS_BUFFER_LEVEL 1


TS_HOLDOFF 1 60 1
TS_HOLDOFF 2 60 1
TS_HOLDOFF 3 60 1
TS_HOLDOFF 4 60 1

TS_INPUT_MASK 0x00000001

# first arg: 0-disable, 1-enable; second arg: prescale (7-3.5kHz, 3-60kHz)
TS_RANDOM_TRIGGER 0 9

TS_CRATE end
