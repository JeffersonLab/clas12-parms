#
# FADCs for forward carriage
#
#
# Cole's stuff
#
include fadc250/s1/adcecal1_tet20_mode1.cnf
include fadc250/s1/adcpcal1_tet20_mode1.cnf
include fadc250/s1/adcftof1_tet20_mode1.cnf
include fadc250/s2/adcecal2_tet20_mode1.cnf
include fadc250/s2/adcpcal2_tet20_mode1.cnf
include fadc250/s2/adcftof2_tet20_mode1.cnf
include fadc250/s3/adcecal3_tet20_mode1.cnf
include fadc250/s3/adcpcal3_tet20_mode1.cnf
include fadc250/s3/adcftof3_tet20_mode1.cnf
include fadc250/s4/adcecal4_tet20_mode1.cnf
include fadc250/s4/adcpcal4_tet20_mode1.cnf
include fadc250/s4/adcftof4_tet20_mode1.cnf
include fadc250/s5/adcecal5_tet20_mode1.cnf
include fadc250/s5/adcpcal5_tet20_mode1.cnf
include fadc250/s5/adcftof5_tet20_mode1.cnf
include fadc250/s6/adcecal6_tet20_mode1.cnf
include fadc250/s6/adcpcal6_tet20_mode1.cnf
include fadc250/s6/adcftof6_tet20_mode1.cnf


###################
# FADC pedestals
###################

FADC250_CRATE adcecal1
include trigger/PEDS/adcecal1_ped.cnf
FADC250_CRATE end
FADC250_CRATE adcecal2
include trigger/PEDS/adcecal2_ped.cnf
FADC250_CRATE end
FADC250_CRATE adcecal3
include trigger/PEDS/adcecal3_ped.cnf
FADC250_CRATE end
FADC250_CRATE adcecal4
include trigger/PEDS/adcecal4_ped.cnf
FADC250_CRATE end
FADC250_CRATE adcecal5
include trigger/PEDS/adcecal5_ped.cnf
FADC250_CRATE end
FADC250_CRATE adcecal6
include trigger/PEDS/adcecal6_ped.cnf
FADC250_CRATE end

FADC250_CRATE adcpcal1
include trigger/PEDS/adcpcal1_ped.cnf
FADC250_CRATE end
FADC250_CRATE adcpcal2
include trigger/PEDS/adcpcal2_ped.cnf
FADC250_CRATE end
FADC250_CRATE adcpcal3
include trigger/PEDS/adcpcal3_ped.cnf
FADC250_CRATE end
FADC250_CRATE adcpcal4
include trigger/PEDS/adcpcal4_ped.cnf
FADC250_CRATE end
FADC250_CRATE adcpcal5
include trigger/PEDS/adcpcal5_ped.cnf
FADC250_CRATE end
FADC250_CRATE adcpcal6
include trigger/PEDS/adcpcal6_ped.cnf
FADC250_CRATE end

FADC250_CRATE adcftof1
include trigger/PEDS/adcftof1_ped.cnf
FADC250_CRATE end
FADC250_CRATE adcftof2
include trigger/PEDS/adcftof2_ped.cnf
FADC250_CRATE end
FADC250_CRATE adcftof3
include trigger/PEDS/adcftof3_ped.cnf
FADC250_CRATE end
FADC250_CRATE adcftof4
include trigger/PEDS/adcftof4_ped.cnf
FADC250_CRATE end
FADC250_CRATE adcftof5
include trigger/PEDS/adcftof5_ped.cnf
FADC250_CRATE end
FADC250_CRATE adcftof6
include trigger/PEDS/adcftof6_ped.cnf
FADC250_CRATE end

FADC250_CRATE adcctof1
include trigger/PEDS/adcctof1_ped.cnf
FADC250_CRATE end




#########################
# trig1 Crate
#########################

TS_CRATE trig1

###TS_FIBER_DELAY_OFFSET 0x80 0xcf

#TS_BLOCK_LEVEL 1
#TS_BUFFER_LEVEL 1
TS_BLOCK_LEVEL 10
TS_BUFFER_LEVEL 8

#TS_HOLDOFF 1 60 1
#TS_HOLDOFF 2 60 1
#TS_HOLDOFF 3 60 1
#TS_HOLDOFF 4 60 1

TS_HOLDOFF 1 30 1
TS_HOLDOFF 2 30 1
TS_HOLDOFF 3 30 1
TS_HOLDOFF 4 30 1

#TS_INPUT_PRESCALE 1 0
#TS_INPUT_PRESCALE 2 0
#TS_INPUT_PRESCALE 3 0
#TS_INPUT_PRESCALE 4 0
#TS_INPUT_PRESCALE 5 0
#TS_INPUT_PRESCALE 6 0

TS_INPUT_MASK 0x0000003F

# first arg: 0-disable, 1-enable; second arg: prescale (15-7Hz, 7-3.5kHz, 3-60kHz)
TS_RANDOM_TRIGGER 0 3

TS_CRATE end




###################
# FADC settings
###################

FADC250_CRATE all

FADC250_SLOT all

FADC250_DAC  3300

FADC250_W_OFFSET  7900
FADC250_W_WIDTH   400

# extra shift for CTOF
FADC250_CRATE adcctof1
FADC250_SLOT 3
FADC250_W_OFFSET  7980
FADC250_SLOT 4
FADC250_W_OFFSET  7980
FADC250_SLOT 5
FADC250_W_OFFSET  7980
FADC250_SLOT 6
FADC250_W_OFFSET  7980
FADC250_SLOT 7
FADC250_W_OFFSET  7980
FADC250_SLOT 8
FADC250_W_OFFSET  7980
FADC250_CRATE end

FADC250_CRATE end
