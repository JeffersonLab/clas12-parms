#########################
# adcft1 Crate
#########################

### TI
TI_CRATE adcft1

TI_FIBER_DELAY_OFFSET 0x80 0xcf
TI_BUFFER_LEVEL 1
TI_BLOCK_LEVEL  1
TI_INPUT_MASK 1 1 1 1 0 0

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

#Set input delay to 511*4ns => 2044ns
#Needed to allow trigger to make decision and capture for readout
#Readout windows below must adjust accordningly
TI_INPUT_DELAY   1 511
TI_INPUT_DELAY   2 511
TI_INPUT_DELAY   3 511
TI_INPUT_DELAY   4 511
TI_INPUT_DELAY   5 511
TI_INPUT_DELAY   6 511

TI_CRATE end

### FADC
FADC250_CRATE adcft1

FADC250_SLOT all
FADC250_DAC  3300

#when decreased, ADC pulse moves left
## BEFORE TI DELAY:
## setting for cosmics: OFFSET = 1400
## setting for LED: OFFSET = 940

#FADC250_W_OFFSET 1400
FADC250_W_OFFSET 3444    

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
#FADC250_TET_IGNORE_MASK 1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
FADC250_TET_IGNORE_MASK 0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
FADC250_TRG_WIDTH       100
FADC250_TRG_MINTOT      5
FADC250_TRG_MINMULT     1

#A.C. 22/11/2017
#I commented following line (FADC250_GAIN) so that gains are loaded
#This occurs when using the config file $CLON_PARMS/fadc250/adcft1.cnf
#that get loaded BEFORE this (and FOR ANY TRIGGER CONFIG!)
#FADC250_GAIN 1.0

# Note:
# 1) threshold used here is for both readout and triggering
# 2) if no zero suppresion is desired (i.e. want to readout all channels)
#    then set FADC250_TETIGNORE_MASK to all 1s and this will ignore
#    the threshold value for readout and only use it for triggering
# 3) this threshold is relative to the fadc pedestal/offsets used
FADC250_TET 6
#FADC250_TET 0

#ADCFT1 THRESHOLD ADJUSTMENTS AND FADC MULTIPLICITY SETTINGS 
#Channels with higher thresholds
FADC250_SLOT 3
FADC250_TRG_MINMULT     3

FADC250_SLOT 4
FADC250_TRG_MINMULT     3

FADC250_SLOT 5
FADC250_TRG_MINMULT     6

FADC250_SLOT 6
FADC250_TRG_MINMULT     6
FADC250_TRG_MASK        1  1  1  1  1  1  1  1  1  1  1  0  1  1  1  1

FADC250_SLOT 7
FADC250_TRG_MINMULT     3
FADC250_TRG_MASK        1  1  1  1  1  1  1  1  1  1  1  0  1  1  0  1

FADC250_SLOT 8
FADC250_TRG_MINMULT     3

FADC250_SLOT 9
FADC250_TRG_MINMULT     7

FADC250_SLOT 10
FADC250_TRG_MINMULT     5

FADC250_SLOT 13
FADC250_TRG_MINMULT     4

FADC250_SLOT 14
FADC250_TRG_MINMULT     3

FADC250_SLOT 15
FADC250_TRG_MINMULT     1

##########################


include trigger/PEDS/hv_on/beam_off/adcft1_ped.cnf
include trigger/FT/adcft1_gain.cnf


FADC250_CRATE end




VTP_CRATE adcft1vtp

VTP_FIRMWARE fe_vtp_hallb_v7_ftcal1.bin

#VTP_W_OFFSET 1400
VTP_W_OFFSET 3444
VTP_W_WIDTH  400

#        slot: 10 13  9 14  8 15  7 16  6 17  5 18  4 19  3 20
#     payload:  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16
VTP_PAYLOAD_EN  1  1  1  1  1  1  1  0  1  0  1  0  1  0  1  0

#      fiber:  1  2  3  4
VTP_FIBER_EN   1  1  1  1

# Cluster seed hit minimum energy to form cluster. Units MeV
#A.C. 22 nov 2017 changed from 100 to 20 MeV to have some data from VTP
#VTP_FTCAL_SEED_EMIN   100
VTP_FTCAL_SEED_EMIN 20

# Cluster hit timing coicidence (with respect to seed). Units: +/-Xns
VTP_FTCAL_SEED_DT     16

VTP_CRATE end



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
## BEFORE TI DELAY:
## setting for cosmics: OFFSET = 1400
## setting for LED: OFFSET = 940

#FADC250_W_OFFSET 1400
FADC250_W_OFFSET 3444    


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
#FADC250_TET_IGNORE_MASK 1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
FADC250_TET_IGNORE_MASK 0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
FADC250_TRG_WIDTH       100
FADC250_TRG_MINTOT      5
FADC250_TRG_MINMULT     1

#A.C. 22/11/2017
#I commented following line (FADC250_GAIN) so that gains are loaded
#This occurs when using the config file $CLON_PARMS/fadc250/adcft2.cnf
#that get loaded BEFORE this (and FOR ANY TRIGGER CONFIG!)
#FADC250_GAIN 1.0


# Note:
# 1) threshold used here is for both readout and triggering
# 2) if no zero suppresion is desired (i.e. want to readout all channels)
#    then set FADC250_TET_IGNORE_MASK to all 1s and this will ignore
#    the threshold value for readout and only use it for triggering
# 3) this threshold is relative to the fadc pedestal/offsets used
FADC250_TET 6
#FADC250_TET 0


#ADCFT2 THRESHOLD ADJUSTMENTS AND FADC MULTIPLICITY SETTINGS 
#Channels with higher thresholds 
FADC250_SLOT 3
FADC250_TRG_MINMULT     3
#FADC250_CH_TET    5     25

FADC250_SLOT 4
FADC250_TRG_MINMULT     3
#FADC250_CH_TET    9     15

FADC250_SLOT 5
FADC250_TRG_MINMULT     6
FADC250_TRG_MASK        1  1  1  1  1  1  1  1  1  1  1  1  1  0  1  1


FADC250_SLOT 6
FADC250_TRG_MINMULT     6

FADC250_SLOT 7
FADC250_TRG_MINMULT     3

FADC250_SLOT 8
FADC250_TRG_MINMULT     3

FADC250_SLOT 9
FADC250_TRG_MINMULT     7
FADC250_TRG_MASK        1  1  1  1  1  0  1  1  1  1  0  1  1  1  1  1


FADC250_SLOT 10
FADC250_TRG_MINMULT     5
FADC250_TRG_MASK        1  0  1  0  1  1  1  1  1  1  1  0  1  1  1  1

FADC250_SLOT 13
FADC250_TRG_MINMULT     4

FADC250_SLOT 14
FADC250_TRG_MINMULT     3
FADC250_TRG_MASK        1  1  0  1  1  1  1  1  1  1  1  1  1  1  1  1

##########################



include trigger/PEDS/hv_on/beam_off/adcft2_ped.cnf
include trigger/FT/adcft2_gain.cnf

FADC250_CRATE end


VTP_CRATE adcft2vtp

VTP_FIRMWARE fe_vtp_hallb_v7_ftcal2.bin

#VTP_W_OFFSET 1400
VTP_W_OFFSET 3444
VTP_W_WIDTH  400

#        slot: 10 13  9 14  8 15  7 16  6 17  5 18  4 19  3 20
#     payload:  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16
VTP_PAYLOAD_EN  1  1  1  1  1  0  1  0  1  0  1  0  1  0  1  0

#      fiber:  1  2  3  4
VTP_FIBER_EN   1  1  1  1

# Cluster seed hit minimum energy to form cluster. Units MeV
#A.C. 22 nov 2017 changed from 100 MeV to 20 MeV to have some output from VTP (100 is too big)
#VTP_FTCAL_SEED_EMIN   100
VTP_FTCAL_SEED_EMIN 20 
# Cluster hit timing coicidence (with respect to seed). Units: +/-Xns
VTP_FTCAL_SEED_DT     16

VTP_CRATE end


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
#FADC250_W_OFFSET 1300
FADC250_W_OFFSET 3344
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
#FADC250_TET_IGNORE_MASK 0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
FADC250_TRG_WIDTH       100
FADC250_TRG_MINTOT      4
FADC250_TRG_MINMULT     2

FADC250_GAIN 1.0

# Note:
# 1) threshold used here is for both readout and triggering
# 2) if no zero suppresion is desired (i.e. want to readout all channels)
#    then set FADC250_TET_IGNORE_MASK to all 1s and this will ignore
#    the threshold value for readout and only use it for triggering
# 3) this threshold is relative to the fadc pedestal/offsets used
FADC250_TET 200
#FADC250_TET 0

include trigger/PEDS/hv_on/beam_off/adcft3_ped.cnf
 

FADC250_CRATE end


VTP_CRATE adcft3vtp

VTP_FIRMWARE fe_vtp_hallb_v7_fthodo.bin

#VTP_W_OFFSET 1400
VTP_W_OFFSET 3444
VTP_W_WIDTH  400

#        slot: 10 13  9 14  8 15  7 16  6 17  5 18  4 19  3 20
#     payload:  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16
VTP_PAYLOAD_EN  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  0

#      fiber:  1  2  3  4
VTP_FIBER_EN   1  1  1  1

# Hodoscope minimum hodoscope hit energy
VTP_FTHODO_EMIN   100

VTP_CRATE end

