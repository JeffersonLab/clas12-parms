#########################################
# CLAS12 daq/trigger default config file #
##########################################

##############################
# TI settings (TI master only)
##############################

########################################
# Trigger stage 3 (vtp in trig2 crate) #
########################################

VTP_CRATE trig2vtp

##VTP_W_OFFSET 7900
#VTP_W_OFFSET 7650
VTP_W_OFFSET 6624
VTP_W_WIDTH   400

#        slot: 10 13  9 14  8 15  7 16  6 17  5 18  4 19  3 20
#     payload:  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16
VTP_PAYLOAD_EN  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0


# global latency
##VTP_GT_LATENCY 6450
VTP_GT_LATENCY 5426


VTP_GT_WIDTH   16

# TRIGGER BITS: 
#              trig number 
#              |   ssp trig mask 
#              |   |   ssp sector mask        
#              |   |   |  multiplicity 
#              |   |   |  |  coincidence=#extended_clock_cycles 
#              |   |   |  |  |  ssp central trig mask
#              |   |   |  |  |  |
#
# Electron, All Sectors with DC
VTP_GT_TRGBIT  0   3  63  1  1  0  # SSP STRG0|STRG1, SECTOR 1-6

# Electron, Individual Sectors with DC
VTP_GT_TRGBIT  1   3   1  1  1  0  # SSP STRG0|STRG1, SECTOR 1
VTP_GT_TRGBIT  2   3   2  1  1  0  # SSP STRG0|STRG1, SECTOR 2
VTP_GT_TRGBIT  3   3   4  1  1  0  # SSP STRG0|STRG1, SECTOR 3
VTP_GT_TRGBIT  4   3   8  1  1  0  # SSP STRG0|STRG1, SECTOR 4
VTP_GT_TRGBIT  5   3  16  1  1  0  # SSP STRG0|STRG1, SECTOR 5
VTP_GT_TRGBIT  6   3  32  1  1  0  # SSP STRG0|STRG1, SECTOR 6

# Electron, All sectors without DC
VTP_GT_TRGBIT  7  96  63  1  1  0  # SSP STRG5|STRG6, SECTOR 1-6

# PCAL(>10)xECAL(>10 MeV) All sectors without DC
VTP_GT_TRGBIT  8 128  63  1  1  0  # SSP STRG7, SECTOR 1-6


# DC x FTOFPCU x PCAL>15MeV, Individual Sectors (for tagging/efficiency studies)
VTP_GT_TRGBIT 13   4   1  1  1  0  # SSP STRG2, SECTOR 1
VTP_GT_TRGBIT 14   4   2  1  1  0  # SSP STRG2, SECTOR 2
VTP_GT_TRGBIT 15   4   4  1  1  0  # SSP STRG2, SECTOR 3
VTP_GT_TRGBIT 16   4   8  1  1  0  # SSP STRG2, SECTOR 4
VTP_GT_TRGBIT 17   4  16  1  1  0  # SSP STRG2, SECTOR 5
VTP_GT_TRGBIT 18   4  32  1  1  0  # SSP STRG2, SECTOR 6


# FTOF x PCAL>15MeV x ECAL>40MeV (2 Sectors)
VTP_GT_TRGBIT 19   8   9  2  1  0  # SSP STRG3, SECTOR 1 & 4
VTP_GT_TRGBIT 20   8  18  2  1  0  # SSP STRG3, SECTOR 2 & 5
VTP_GT_TRGBIT 21   8  36  2  1  0  # SSP STRG3, SECTOR 3 & 6



# FT(300 - 8500) MeV x DC x FTOFPCU x PCAL>15MeV x CTOF (2 Sectors)
VTP_GT_TRGBIT 24  16  63  1  1  8 # SSP STRG4, SECTOR 1-6, CTRG3

# FT(300-4000)MeV x DC x FTOFPCU x PCAL>15MeV (2 Sectors)
VTP_GT_TRGBIT 25   4  63  2  1  1  # SSP STRG2, SECTOR 1-6, CTRG0

# 2 FT clusters (500-8500)MeV
VTP_GT_TRGBIT 26   0  63  1  0  2  #  CTRG1 

# FT(100-8000)MeV without hodoscope
VTP_GT_TRGBIT 27   0  63  1  0  4  #  CTRG2

# PULSER
VTP_GT_TRG             31
VTP_GT_TRG_PULSER_FREQ 1000.0

VTP_CRATE end

############################
# TS settings (trig1 crate)
############################

TS_CRATE trig1

#lock-roc mode
#TS_BLOCK_LEVEL   1
#TS_BUFFER_LEVEL  1


# with micromega
#TS_BLOCK_LEVEL   10
#TS_BUFFER_LEVEL   8
#TS_HOLDOFF   1 30 1
#TS_HOLDOFF   2 30 1
#TS_HOLDOFF   3 30 1
#TS_HOLDOFF   4 30 1

# production: 5 5 15 10
TS_BLOCK_LEVEL   40
TS_BUFFER_LEVEL   5
#TS_BLOCK_LEVEL    1
#TS_BUFFER_LEVEL   5
TS_HOLDOFF   1  1 1
TS_HOLDOFF   2  1 1
TS_HOLDOFF   3  1 1
TS_HOLDOFF   4  1 1

# crashes VTPs
#TS_BLOCK_LEVEL   40
#TS_BUFFER_LEVEL   8
#TS_HOLDOFF   1 10 1
#TS_HOLDOFF   2 10 1
#TS_HOLDOFF   3  7 1
#TS_HOLDOFF   4  5 1

#
# TS GTP trigger mask
#
TS_GTP_INPUT_MASK 0xFFFFFFFF

#bit 28
##TS_GTP_INPUT_MASK 0x10000000
##TS_GTP_INPUT_MASK 0x00000000


#
# TS FP trigger mask
#
# 0x80  - FARADAY
# 0x100 - SVT
# 0x200 - CTOF
# 0x400 - CND
# 0x800 - MVT
# 0x1000 - helicity

#TS_FP_INPUT_MASK 0x00001080
TS_FP_INPUT_MASK 0x0

### Faraday cup prescale
TS_FP_PRESCALE  8 5


# TS_GTP_PRESCALE bit prescale
# TS_FP_PRESCALE  bit prescale
# Note: actual prescale is 2^(prescale-1)+1
#       prescale from 0 to 15
#       bit from 0 to 31  Prescale=(1-32)

#
# NO PRESCALE ON MAIN TRIGGER BITS 1-7
# PRESCALE BIT NUMBER HERE IS +1 wrt BIT DEFINITION, I.E. BIT 0 ABOVE IS BIT 1 HERE, .. , BIT 31 ABOVE is BIT 32 HERE


# TriggerBits 7-Sector 1 
TS_GTP_PRESCALE  8 6

# TriggerBits 8-Sector 4 
TS_GTP_PRESCALE  9 12

####### Not used ########

#   TriggerBit   9 
TS_GTP_PRESCALE 10  15

#   TriggerBit  10 
TS_GTP_PRESCALE 11  15

#   TriggerBit  11 
TS_GTP_PRESCALE 12 15

#   TriggerBit  12 
TS_GTP_PRESCALE 13 15


#
##### FTOF*PCU tagging triggers
#
#   TriggerBit  13  DC x FTOFPCU x PCAL>15MeV, S1
TS_GTP_PRESCALE 14 15

#   TriggerBit  14  DC x FTOFPCU x PCAL>15MeV, S2
TS_GTP_PRESCALE 15 15

#   TriggerBit  15  DC x FTOFPCU x PCAL>15MeV, S3
TS_GTP_PRESCALE 16  15

#   TriggerBit  16  DC x FTOFPCU x PCAL>15MeV, S4
TS_GTP_PRESCALE 17  15

#   TriggerBit  17  DC x FTOFPCU x PCAL>15MeV, S5
TS_GTP_PRESCALE 18  15

#   TriggerBit  18  DC x FTOFPCU x PCAL>15MeV, S6
TS_GTP_PRESCALE 19  15

#
######    OPPOSITE SECTOR TRIGGERS ####
#

#   TriggerBit  19 FTOFxPCALxECAL S1-4
TS_GTP_PRESCALE 20   0

#   TriggerBit  20 FTOFxPCALxECAL S2-5
TS_GTP_PRESCALE 21   0

#   TriggerBit  21 FTOFxPCALxECAL S3-6
TS_GTP_PRESCALE 22   0

##### Not used #####

#   TriggerBit  22 
TS_GTP_PRESCALE 23  15

#   TriggerBit  23 
TS_GTP_PRESCALE 24  15

#
#####     FT TRIGGERS    ####
#

#   TriggerBit  24 Sector4xDC
TS_GTP_PRESCALE 25  6

#   TriggerBit  25 FTx[FTOFxPCAL]^2
TS_GTP_PRESCALE 26  0

#   TriggerBit  26 FTx[FTOFxPCAL]^3
TS_GTP_PRESCALE 27  6

#   TriggerBit  27 Sector5xDC
TS_GTP_PRESCALE 28 15




#   TriggerBit  28 
TS_GTP_PRESCALE 29 15

#   TriggerBit  29 
TS_GTP_PRESCALE 30 15

#   TriggerBit  30 
TS_GTP_PRESCALE 31 15

#Pulser
TS_GTP_PRESCALE 32  0

# First arg:      0-disable, 
#                 1-enable; 
#                 |   Prescale (15-7Hz, 7-3.5kHz, 5-15kHz, 4-30kHz, 3-60kHz)
#                 |   |
TS_RANDOM_TRIGGER 1   2

TS_CRATE end


