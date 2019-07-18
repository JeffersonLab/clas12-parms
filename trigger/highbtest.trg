#
# main config file for highBtest
#


TI_CRATE all
TI_FIBER_DELAY_OFFSET 0x80 0xcf

TI_BLOCK_LEVEL 1
TI_BUFFER_LEVEL 1
#TI_BLOCK_LEVEL 10
#TI_BUFFER_LEVEL 8

TI_INPUT_MASK 1 1 1 1 1 1

## 1 trigger in Nx0.48us
#TI_HOLDOFF 1 4 1
#TI_HOLDOFF 2 4 1
#TI_HOLDOFF 3 3 1
## 4 triggers in Nx3.84us
#TI_HOLDOFF 4 2 1

#TI_RANDOM_TRIGGER 1 4

TI_CRATE end







# include fadc250/highbtest3.cnf

#
# fadc250 config file - example
#
# this file contains settings for
# fADC250 - JLAB VXS Flash ADC 12-bit 250 Msps 16 ch
#
# format:
# ~~~~~~~
# CRATE             rocbcal1   <- ROC name, crate name, usually IP name
# FADC250_ALLSLOTS             <- just keyword - all settings after this line will be implemented
#                                                for all slots, till FADC250_SLOTS will be met
# FADC250_SLOTS     3  8  15   <- slot_numbers - in which next settings will be implemented
#                                                till file ends or next FADC250_SLOTS will be met
#
# FADC250_F_REV     0x02c1     <- firmware revision  (0x0 Bits:7-0)
# FADC250_B_REV     0x0a03     <- board revision     (0x0 Bits:15-8)
# FADC250_ID        0xfadc     <- board type         (0x0 Bits:31-16)
#
# FADC250_MODE      1   <- process mode: 1-4  (0x10C Bits:2-0)
# FADC250_W_OFFSET  50  <- number of sample back from trigger point. (0x120)
#                            (in Manual it is  PL=Trigger_Window(ns) * 250MHz)
# FADC250_W_WIDTH   49  <- number of ADC sample to include in trigger window. (0x11C)
#                            (in M:  PTW=Trigger_W  hf1_(&idn,&tmpx,&ww);indow(ns) * 250MHz, minimum is 6)
# FADC250_NSB       3   <- number of sample before trigger point to include in data processing. (0x124)
#                            This include the trigger Point. (minimum is 2 in all mode)
# FADC250_NSA       6   <- number of sample after trigger point to include in data processing. (0x128)
#                            Minimum is (6 in mode 2) and ( 3 in mode 0 and 1).
#                            Number of sample report is 1 more for odd and 2 more for even NSA number.
# FADC250_NPEAK     1   <- number of Pulses in Mode 2 and 3.  (0x10C Bits:6-5)
#
#                   0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 - channels ##
# FADC250_ADC_MASK  1  0  1  0  1  0  1  0  1  0  1  0  1  0  1  0   <- channel enable mask
#
# FADC250_TRG_MASK  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1   <- trigger enable mask 
# 
# FADC250_TET       110        <- board Trigger Energy Threshold (TET), same for all 16 channels
# FADC250_CH_TET    0    110   <- channel# and TET_value for this channel
# FADC250_ALLCH_TET 111  222  2  3  4  5  6  7  8  9  10  11  12  13  14  15   <- 16 TETs (0x12C - 0x148)
#
# FADC250_DAC       3300       <- board DAC, one and the same for all 16 channels
# FADC250_CH_DAC    0    3300  <- channel# and DAC_value for this channel
# FADC250_ALLCH_DAC 3300 3280 3310 3280 3310 3280 3310 3280 3300 3280 3300 3280 3310 3280 3310 3280 <- 16 DACs
#
# FADC250_PED       210        <- board Pedestals, same for all channels
# FADC250_CH_PED    0    210   <- channel# and Pedestal_value for this channel
# FADC250_ALLCH_PED 210  220  210  215  215  220  220  210  210  215  215  220  220  210  215  220  <- 16 PEDs

FADC250_CRATE  highbtest3

FADC250_SLOT all

#FADC250_DAC  3000  #0.5V
FADC250_DAC  3300  # V



# Phillip 7210 pulse setting
#FADC250_W_OFFSET  1000
#FADC250_W_WIDTH   400

# Photek PMT210 
FADC250_W_OFFSET  1024
FADC250_W_WIDTH   1000

# Photonis  PP0365g
#FADC250_W_OFFSET  3000
#FADC250_W_WIDTH   1000

# Photonis  XP85012
#FADC250_W_OFFSET  2000
#FADC250_W_WIDTH   6000 



#raw mode
FADC250_MODE      1
FADC250_NSB       12
FADC250_NSA       24
FADC250_NPEAK     1

#pulse mode
#FADC250_MODE      3
#FADC250_NSB       20
#FADC250_NSA       120
#FADC250_NPEAK     3

#       channel:  0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15
FADC250_ADC_MASK  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
FADC250_TRG_MASK  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1


##FADC250_TET 400
FADC250_TET 0

#FADC250_SLOTS 3
#FADC250_ALLCH_DAC 3000 3018 2056 3280 3310 3280 3310 3280 3300 3280 3300 3280 3310 3280 3310 3280
#FADC250_ALLCH_PED 108 118 62 90 83 94 81 73 106 99 102 118 69 75 79 82 

FADC250_CRATE end
