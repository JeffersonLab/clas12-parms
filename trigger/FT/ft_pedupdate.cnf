#########################
# adcft1 Crate
#########################

### TI
TI_CRATE adcft1

TI_FIBER_DELAY_OFFSET 0x80 0xcf
TI_BUFFER_LEVEL 1
TI_BLOCK_LEVEL  1

## HOLD OFF
# 1.44 us holdoff:
TI_HOLDOFF 1 3 1
# 4 triggers in 10*3840ns
TI_HOLDOFF 4 10 1


# PRESCALE-FACTOR = 2**N

TI_INPUT_PRESCALE 1  0
TI_INPUT_PRESCALE 2  0
TI_INPUT_PRESCALE 3  0
TI_INPUT_PRESCALE 4  0
TI_INPUT_PRESCALE 5  0
TI_INPUT_PRESCALE 6  0

TI_CRATE end

### FADC
FADC250_CRATE adcft1

FADC250_SLOT all
FADC250_DAC  3300
#when decreased, ADC pulse moves left
## setting for LED flasher: OFFSET=940, WIDTH=400
## setting for cosmics: OFFSET=1150, WIDTH=400

## new setting for cosmics: OFFSET = 1400?
## new setting for LED: OFFSET = 1190?
## new setting for Mid Values: OFFSET = 1295?
FADC250_W_OFFSET 1295
FADC250_W_WIDTH 400

#raw mode
FADC250_MODE      1
FADC250_NSB       20
FADC250_NSA       400
FADC250_NPEAK     1

#pulse mode
##FADC250_MODE      3
##FADC250_NSB       20
##FADC250_NSA       120
##FADC250_NPEAK     3

#       channel:        0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15
FADC250_ADC_MASK        1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
FADC250_TRG_MASK        1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
FADC250_TET_IGNORE_MASK 1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
FADC250_TRG_WIDTH       100
FADC250_TRG_MINTOT      5
FADC250_TRG_MINMULT     1

FADC250_GAIN 1.0

# Note:
# 1) threshold used here is for both readout and triggering
# 2) if no zero suppresion is desired (i.e. want to readout all channels)
#    then set FADC250_TET_IGNORE_MASK to all 1s and this will ignore
#    the threshold value for readout and only use it for triggering
# 3) this threshold is relative to the fadc pedestal/offsets used
FADC250_TET 0


#include trigger/FT/adcft1_ped.cnf


FADC250_CRATE end


#########################
# adcft2 Crate
#########################

### TI
TI_CRATE adcft2

TI_FIBER_DELAY_OFFSET 0x80 0xcf

TI_CRATE end

### FADC
FADC250_CRATE adcft2

FADC250_SLOT all
FADC250_DAC  3300
#when decreased, ADC pulse moves left
## setting for LED flasher: OFFSET=950, WIDTH=400
## setting for cosmics: OFFSET=1150, WIDTH=400

## new setting for cosmics: OFFSET = 1400?
## new setting for LED: OFFSET = 1200?
## new setting for Mid Values: OFFSET = 1295?
FADC250_W_OFFSET 1295
FADC250_W_WIDTH 400

#raw mode
FADC250_MODE      1
FADC250_NSB       20
FADC250_NSA       400
FADC250_NPEAK     1

#pulse mode
##FADC250_MODE      3
##FADC250_NSB       20
##FADC250_NSA       120
##FADC250_NPEAK     3

#       channel:        0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15
FADC250_ADC_MASK        1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
FADC250_TRG_MASK        1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
FADC250_TET_IGNORE_MASK 1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
FADC250_TRG_WIDTH       100
FADC250_TRG_MINTOT      5
FADC250_TRG_MINMULT     1

FADC250_GAIN 1.0

# Note:
# 1) threshold used here is for both readout and triggering
# 2) if no zero suppresion is desired (i.e. want to readout all channels)
#    then set FADC250_TET_IGNORE_MASK to all 1s and this will ignore
#    the threshold value for readout and only use it for triggering
# 3) this threshold is relative to the fadc pedestal/offsets used
#FADC250_SLOT ##
#FADC250_TET_IGNORE_MASK 1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  
FADC250_TET 0



#include trigger/FT/adcft2_ped.cnf

FADC250_CRATE end


#########################
# adcft3 Crate
#########################

### TI
TI_CRATE adcft3

TI_FIBER_DELAY_OFFSET 0x80 0xcf

TI_CRATE end

### FADC
FADC250_CRATE adcft3

FADC250_SLOT all
FADC250_DAC  3300
#when decreased, ADC pulse moves left
## setting for LED flasher: OFFSET=1000, WIDTH=400
## setting for cosmics: OFFSET=1150, WIDTH=400
FADC250_W_OFFSET 1300
FADC250_W_WIDTH 400

#raw mode
FADC250_MODE      1
FADC250_NSB       20
FADC250_NSA       400
FADC250_NPEAK     1

#pulse mode
##FADC250_MODE      3
##FADC250_NSB       20
##FADC250_NSA       120
##FADC250_NPEAK     3

#       channel:        0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15
FADC250_ADC_MASK        1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
FADC250_TRG_MASK        1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
FADC250_TET_IGNORE_MASK 1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
FADC250_TRG_WIDTH       100
FADC250_TRG_MINTOT      4
FADC250_TRG_MINMULT     4

FADC250_GAIN 1.0

# Note:
# 1) threshold used here is for both readout and triggering
# 2) if no zero suppresion is desired (i.e. want to readout all channels)
#    then set FADC250_TET_IGNORE_MASK to all 1s and this will ignore
#    the threshold value for readout and only use it for triggering
# 3) this threshold is relative to the fadc pedestal/offsets used
FADC250_TET 0

#include trigger/FT/adcft3_ped.cnf

FADC250_CRATE end


