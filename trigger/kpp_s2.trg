#
# kpp_s2.trg
#

TS_CRATE trig1

##TS_FIBER_DELAY_OFFSET 0x80 0xcf
TS_BLOCK_LEVEL 1
TS_BUFFER_LEVEL 1

TS_HOLDOFF 1 60 1
TS_HOLDOFF 2 60 1
TS_HOLDOFF 3 60 1
TS_HOLDOFF 4 60 1

#TS_INPUT_PRESCALE 1 0
#TS_INPUT_PRESCALE 2 0
#TS_INPUT_PRESCALE 3 0
#TS_INPUT_PRESCALE 4 0
#TS_INPUT_PRESCALE 5 0
#TS_INPUT_PRESCALE 6 0

TS_INPUT_MASK 0x00000002

# first arg: 0-disable, 1-enable; second arg: prescale (7-3.5kHz, 3-60kHz)
TS_RANDOM_TRIGGER 0 9

TS_CRATE end


include fadc250/s2/adcecal2_tet20_mode1.cnf
include fadc250/s2/adcpcal2_tet20_mode1.cnf
include fadc250/s2/adcftof2_tet20_mode1.cnf
include trigger/FC/s2/cosmic.trg
