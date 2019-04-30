#
# cnd random
#

#
# TS settings
#

TS_CRATE all


#NOTE: prescales and masks for GTP are set above in VTP_GT_TRGBIT lines
#Don't use the following anymore
#TS_GTP_INPUT_MASK 0x807FFFFF
#TS_GTP_PRESCALE  1   0    #   TriggerBit   0

# production: 5 5 15 10
#TS_BLOCK_LEVEL   1
#TS_BUFFER_LEVEL  1
TS_BLOCK_LEVEL   40
TS_BUFFER_LEVEL   8
TS_HOLDOFF   1  5 1
TS_HOLDOFF   2  5 1
TS_HOLDOFF   3 15 1
TS_HOLDOFF   4 10 1

#
# TS FP trigger mask
#

#  Helicity, Faraday cup, BAND calibration 
#TS_FP_INPUT_MASK 0x00001180

### BAND prescale
#TS_FP_PRESCALE  9 5

### Faraday cup prescale
#TS_FP_PRESCALE  8 5


# First arg:      0-disable, 
#                 1-enable; 
#                 |   Prescale (15-7Hz, 7-3.5kHz, 5-15kHz, 4-30kHz, 3-60kHz)
#                 |   |
TS_RANDOM_TRIGGER 1   15

TS_CRATE end


#
# FADCs
#
FADC250_CRATE all
FADC250_SLOT all

FADC250_COMPRESSION  0

FADC250_W_OFFSET  1300
#FADC250_W_WIDTH   400
FADC250_W_WIDTH   256

FADC250_TET 0
##FADC250_TET 60
##include trigger/PEDS/hv_on/adccnd1_ped.cnf

FADC250_CRATE end


#
# TDCs
#

TDC1190_CRATE adcall
TDC1190_SLOT all

TDC1190_W_OFFSET -2000
TDC1190_W_WIDTH   2000

TDC1190_CRATE end
