###########################################################
# HPS Trigger 
###########################################################

# Setup VTP firmware to use right calorimeter half
VTP_CRATE hps1vtp
VTP_HPS_ECAL_TOP
VTP_CRATE end

VTP_CRATE hps2vtp
VTP_HPS_ECAL_BOT
VTP_CRATE end


VTP_CRATE all

VTP_W_OFFSET 3000
VTP_W_WIDTH 400

#        slot: 10 13  9 14  8 15  7 16  6 17  5 18  4 19  3 20
#     payload:  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16
VTP_PAYLOAD_EN  1  0  1  1  1  1  1  1  1  1  1  1  1  1  1  1

#      fiber:  1  2  3  4
VTP_FIBER_EN   1  0  0  0

# Cluster hit timing coincidence: 0 to 16, units: +/-ns
VTP_HPS_ECAL_CLUSTER_HIT_DT  16

# Cluster seed threshold in: 1 to 8191, units MeV
VTP_HPS_ECAL_CLUSTER_SEED_THR   100

# Hodoscope fadc hit cut: minimum acceptable FADC hit integral: 1 to 8191, units TBD
VTP_HPS_HODOSCOPE_FADCHIT_THR   1

# Hodoscope trigger hit cut: minimum acceptale integral (clustered or single tile): 1 to 8191, units TBD
VTP_HPS_HODOSCOPE_HODO_THR      1

# Hodoscope hit coincidence between L1,L2, and also ECAL clusters (real with is specified value +4ns): 0 to 28, units: ns
VTP_HPS_HODOSCOPE_HODO_DT       28

###################################
# Calibration Trigger Setup
###################################

# Hodoscope trigger: require hits on top, bottom, or both
VTP_HPS_CALIB_HODOSCOPE_TOP_EN  0
VTP_HPS_CALIB_HODOSCOPE_BOT_EN  0

# Cosmic trigger: time coincidence: 0 to 1024, units: ns
VTP_HPS_CALIB_COSMIC_DT         40
# Require hits on top, bottom, or both
VTP_HPS_CALIB_COSMIC_TOP_EN     1
VTP_HPS_CALIB_COSMIC_BOT_EN     1

# Pulser trigger: frequency: 0 to 125MHz, units: Hz
VTP_HPS_CALIB_PULSER_EN         0
VTP_HPS_CALIB_PULSER_FREQ       10.0

# Disable other trigger::
VTP_HPS_SINGLE_EN    0     1
VTP_HPS_SINGLE_EN    1     1
VTP_HPS_SINGLE_EN    2     1
VTP_HPS_SINGLE_EN    3     1
VTP_HPS_PAIR_EN      0     1
VTP_HPS_PAIR_EN      1     1
VTP_HPS_PAIR_EN      2     1
VTP_HPS_PAIR_EN      3     1
VTP_HPS_MULT_EN            1


###################################
# Trigger Ouput Setup
###################################
VTP_HPS_LATENCY                1900

# Prescale: 0 to 65535 (note: 0 disables the trigger output)
VTP_HPS_PRESCALE               0        0   # Single 0 Top
VTP_HPS_PRESCALE               1        0   # Single 1 Top
VTP_HPS_PRESCALE               2        0   # Single 2 Top
VTP_HPS_PRESCALE               3        0   # Single 3 Top
VTP_HPS_PRESCALE               4        0   # Single 0 Bot
VTP_HPS_PRESCALE               5        0   # Single 1 Bot
VTP_HPS_PRESCALE               6        0   # Single 2 Bot
VTP_HPS_PRESCALE               7        0   # Single 3 Bot
VTP_HPS_PRESCALE               8        0   # Pair 0
VTP_HPS_PRESCALE               9        0   # Pair 1
VTP_HPS_PRESCALE               10       0   # Pair 2
VTP_HPS_PRESCALE               11       0   # Pair 3
VTP_HPS_PRESCALE               12       0   # LED
VTP_HPS_PRESCALE               13       1   # Cosmic
VTP_HPS_PRESCALE               14       0   # Hodoscope
VTP_HPS_PRESCALE               15       0   # Pulser
VTP_HPS_PRESCALE               16       0   # Multiplicity


VTP_CRATE end

###########################################################
# TS Crate 
###########################################################
TS_CRATE hps11

#TS_BLOCK_LEVEL 40
#TS_BUFFER_LEVEL 8
TS_BLOCK_LEVEL 1
TS_BUFFER_LEVEL 1

TS_HOLDOFF 1 60 1
TS_HOLDOFF 2 60 1
TS_HOLDOFF 3 60 1
TS_HOLDOFF 4 60 1

# TS front panel inputs:  
TS_FP_INPUT_MASK 0xFFFFFFFF

# TS GTP inputs:  
TS_GTP_INPUT_MASK 0xFFFFFFFF

# first arg: 0-disable, 1-enable; second arg: prescale (9-700Hz, 7-3.5kHz, 6-6.1kHz, 5-10kHz(65%live), 3-60kHz)
TS_RANDOM_TRIGGER 0 6

TS_CRATE end

###########################################################
# TI Crate Deskewing 
###########################################################
TI_CRATE hps1
TI_FIBER_DELAY_OFFSET 0x80 0x80
TI_CRATE end

TI_CRATE hps2
TI_FIBER_DELAY_OFFSET 0x80 0x80
TI_CRATE end

TIP_CRATE clonfarm2
TIP_FIBER_DELAY_OFFSET 0x80 0x80
TIP_CRATE end

TIP_CRATE clonfarm3
TIP_FIBER_DELAY_OFFSET 0x80 0x80
TIP_CRATE end
