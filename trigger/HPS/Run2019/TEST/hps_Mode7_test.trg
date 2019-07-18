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
VTP_HPS_CALIB_HODOSCOPE_TOP_EN  1
VTP_HPS_CALIB_HODOSCOPE_BOT_EN  1

# Cosmic trigger: time coincidence: 0 to 1024, units: ns
VTP_HPS_CALIB_COSMIC_DT         40
# Require hits on top, bottom, or both
VTP_HPS_CALIB_COSMIC_TOP_EN     0
VTP_HPS_CALIB_COSMIC_BOT_EN     0

# Pulser trigger: frequency: 0 to 125MHz, units: Hz
VTP_HPS_CALIB_PULSER_EN         0
VTP_HPS_CALIB_PULSER_FREQ       10.0


###################################
# Singles Trigger 0 Setup
###################################

#                    singles trigger bit number
#                    |       settings
#                    |       |                       enable cut
#                    |       |                       |
#                    |       |                       |

# Enable trigger
VTP_HPS_SINGLE_EN    0                             1

# Minimum cluster energy: 1 to 8191, units MeV
VTP_HPS_SINGLE_EMIN  0     100                     1
VTP_HPS_SINGLE_EMAX  0    8191                     1
VTP_HPS_SINGLE_NMIN  0       1                     1

# Minimum cluster x coordinate: -31 to 31
VTP_HPS_SINGLE_XMIN  0     -31                     1

# Cluster position dependent energy threshold coefficients
# Cluster Energy >=     C0  + C1*X + C2*X*X+C3*X*X*X
VTP_HPS_SINGLE_PDE   0  1.0   1.0    1.0    1.0    1

# Hodoscope trigger
#                       require hit on l1
#                       |     require hit on l2
#                       |     |      require hit on l1 and l2 with geometry matching
#                       |     |      |      require hit on l1 and l2 with cluster X geometry matching
#                       |     |      |      |
#                       |     |      |      |
VTP_HPS_SINGLE_HODO  0  0     0      0      0      1

###################################
# Singles Trigger 1 Setup
###################################

#                    singles trigger bit number
#                    |       settings
#                    |       |                       enable cut
#                    |       |                       |
#                    |       |                       |

# Enable trigger
VTP_HPS_SINGLE_EN    1                             1

# Minimum cluster energy: 1 to 8191, units MeV
VTP_HPS_SINGLE_EMIN  1     100                     1
VTP_HPS_SINGLE_EMAX  1    8191                     1
VTP_HPS_SINGLE_NMIN  1       1                     1

# Minimum cluster x coordinate: -31 to 31
VTP_HPS_SINGLE_XMIN  1     -31                     1

# Cluster position dependent energy threshold coefficients
# Cluster Energy >=     C0  + C1*X + C2*X*X+C3*X*X*X
VTP_HPS_SINGLE_PDE   1  1.0   1.0    1.0    1.0    1

# Hodoscope trigger
#                       require hit on l1
#                       |     require hit on l2
#                       |     |      require hit on l1 and l2 with geometry matching
#                       |     |      |      require hit on l1 and l2 with cluster X geometry matching
#                       |     |      |      |
#                       |     |      |      |
VTP_HPS_SINGLE_HODO  1  0     0      0      0      1


###################################
# Singles Trigger 2 Setup
###################################

#                    singles trigger bit number
#                    |       settings
#                    |       |                       enable cut
#                    |       |                       |
#                    |       |                       |

# Enable trigger
VTP_HPS_SINGLE_EN    2                             1

# Minimum cluster energy: 1 to 8191, units MeV
VTP_HPS_SINGLE_EMIN  2     100                     1
VTP_HPS_SINGLE_EMAX  2    8191                     1
VTP_HPS_SINGLE_NMIN  2       1                     1

# Minimum cluster x coordinate: -31 to 31
VTP_HPS_SINGLE_XMIN  2     -31                     1

# Cluster position dependent energy threshold coefficients
# Cluster Energy >=     C0  + C1*X + C2*X*X+C3*X*X*X
VTP_HPS_SINGLE_PDE   2  1.0   1.0    1.0    1.0    1

# Hodoscope trigger
#                       require hit on l1
#                       |     require hit on l2
#                       |     |      require hit on l1 and l2 with geometry matching
#                       |     |      |      require hit on l1 and l2 with cluster X geometry matching
#                       |     |      |      |
#                       |     |      |      |
VTP_HPS_SINGLE_HODO  2  0     0      0      0      1


###################################
# Singles Trigger 3 Setup
###################################

#                    singles trigger bit number
#                    |       settings
#                    |       |--------------|      enable cut
#                    |       |              |      |
#                    |       |              |      |

# Enable trigger
VTP_HPS_SINGLE_EN    3                             1

# Minimum cluster energy: 1 to 8191, units MeV
VTP_HPS_SINGLE_EMIN  3     100                     1
VTP_HPS_SINGLE_EMAX  3    8191                     1
VTP_HPS_SINGLE_NMIN  3       1                     1

# Minimum cluster x coordinate: -31 to 31
VTP_HPS_SINGLE_XMIN  3     -31                     1

# Cluster position dependent energy threshold coefficients
# Cluster Energy >=     C0  + C1*X + C2*X*X+C3*X*X*X
VTP_HPS_SINGLE_PDE   3  1.0   1.0    1.0    1.0    1

# Hodoscope trigger
#                       require hit on l1
#                       |     require hit on l2
#                       |     |      require hit on l1 and l2 with geometry matching
#                       |     |      |      require hit on l1 and l2 with cluster X geometry matching
#                       |     |      |      |
#                       |     |      |      |
VTP_HPS_SINGLE_HODO  3  0     0      0      0      1



###################################
# Pair Trigger 0 Setup
###################################

#                              singles trigger bit number
#                              |     settings
#                              |     |-------|     enable cut
#                              |     |       |     |
#                              |     |       |     |

# Enable Trigger
VTP_HPS_PAIR_EN                0     1

# Minimum cluster energy
VTP_HPS_PAIR_EMIN              0     100

# Maximum Cluster energy
VTP_HPS_PAIR_EMAX              0     8191

# Minimum Hit in Cluster
VTP_HPS_PAIR_NMIN              0     1

# Pair time coincidence: 0 to 16, units +/-ns
VTP_HPS_PAIR_TIMECOINCIDENCE   0     12

# Pair Cluster Sum Max,Min: 0 to 8191, units MeV
VTP_HPS_PAIR_SUMMAX_MIN        0     8191    1     1

# Pair Cluster Difference Maximum
VTP_HPS_PAIR_DIFFMAX           0     8191          1

# Pair Energy,Distance:         dist*F  >= THR, units: F: MeV/mm, THR: MeV
VTP_HPS_PAIR_ENERGYDIST        0     5.5   400     1

# Pair Coplanarity Tolerance: 0 to 180, units: +/-degrees
VTP_HPS_PAIR_COPLANARITY       0     35            1


###################################
# Pair Trigger 1 Setup
###################################

#                              singles trigger bit number
#                              |     settings
#                              |     |-------|     enable cut
#                              |     |       |     |
#                              |     |       |     |

# Enable Trigger
VTP_HPS_PAIR_EN                1     1

# Minimum cluster energy
VTP_HPS_PAIR_EMIN              1     100

# Maximum Cluster energy
VTP_HPS_PAIR_EMAX              1     8191

# Minimum Hit in Cluster
VTP_HPS_PAIR_NMIN              1     1

# Pair time coincidence: 0 to 16, units +/-ns
VTP_HPS_PAIR_TIMECOINCIDENCE   1     12

# Pair Cluster Sum Max,Min: 0 to 8191, units MeV
VTP_HPS_PAIR_SUMMAX_MIN        1     8191    1     1

# Pair Cluster Difference Maximum
VTP_HPS_PAIR_DIFFMAX           1     8191          1

# Pair Energy,Distance:         dist*F  >= THR, units: F: MeV/mm, THR: MeV
VTP_HPS_PAIR_ENERGYDIST        1     5.5   400     1

# Pair Coplanarity Tolerance: 0 to 180, units: +/-degrees
VTP_HPS_PAIR_COPLANARITY       1     35            1


###################################
# Pair Trigger 2 Setup
###################################

#                              singles trigger bit number
#                              |     settings
#                              |     |-------|     enable cut
#                              |     |       |     |
#                              |     |       |     |

# Enable Trigger
VTP_HPS_PAIR_EN                2     1

# Minimum cluster energy
VTP_HPS_PAIR_EMIN              2     100

# Maximum Cluster energy
VTP_HPS_PAIR_EMAX              2     8191

# Minimum Hit in Cluster
VTP_HPS_PAIR_NMIN              2     1

# Pair time coincidence: 0 to 16, units +/-ns
VTP_HPS_PAIR_TIMECOINCIDENCE   2     12

# Pair Cluster Sum Max,Min: 0 to 8191, units MeV
VTP_HPS_PAIR_SUMMAX_MIN        2     8191    1     1

# Pair Cluster Difference Maximum
VTP_HPS_PAIR_DIFFMAX           2     8191          1

# Pair Energy,Distance:         dist*F  >= THR, units: F: MeV/mm, THR: MeV
VTP_HPS_PAIR_ENERGYDIST        2     5.5   400     1

# Pair Coplanarity Tolerance: 0 to 180, units: +/-degrees
VTP_HPS_PAIR_COPLANARITY       2     35            1


###################################
# Pair Trigger 3 Setup
###################################

#                              singles trigger bit number
#                              |     settings
#                              |     |-------|     enable cut
#                              |     |       |     |
#                              |     |       |     |

# Enable Trigger
VTP_HPS_PAIR_EN                3     1

# Minimum cluster energy
VTP_HPS_PAIR_EMIN              3     100

# Maximum Cluster energy
VTP_HPS_PAIR_EMAX              3     8191

# Minimum hits in cluster
VTP_HPS_PAIR_NMIN              3     1

# Pair time coincidence: 0 to 16, units +/-ns
VTP_HPS_PAIR_TIMECOINCIDENCE   3     12

# Pair Cluster Sum Max,Min: 0 to 8191, units MeV
VTP_HPS_PAIR_SUMMAX_MIN        3     8191    1     1

# Pair Cluster Difference Maximum
VTP_HPS_PAIR_DIFFMAX           3     8191          1

# Pair Energy,Distance:         dist*F  >= THR, units: F: MeV/mm, THR: MeV
VTP_HPS_PAIR_ENERGYDIST        3     5.5   400     1

# Pair Coplanarity Tolerance: 0 to 180, units: +/-degrees
VTP_HPS_PAIR_COPLANARITY       3     35            1

###################################
# Cluster Multiplicity Trigger Setup
###################################

# Minimum cluster energy
VTP_HPS_MULT_EMIN  1

# Maximum cluster energy
VTP_HPS_MULT_EMAX  8191

# Minimum hits in cluster
VTP_HPS_MULT_NMIN  1

# Cluster Multiplicity
#                 TOP BOT TOT
VTP_HPS_MULT_MIN  1   1   3

# Cluster Multiplicity Time Window
VTP_HPS_MULT_DT   16
VTP_HPS_MULT_EN   1

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
VTP_HPS_PRESCALE               13       0   # Cosmic
VTP_HPS_PRESCALE               14       1   # Hodoscope
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

#TS_INPUT_PRESCALE 1 0
#TS_INPUT_PRESCALE 2 0
#TS_INPUT_PRESCALE 3 0
#TS_INPUT_PRESCALE 4 0
#TS_INPUT_PRESCALE 5 0
#TS_INPUT_PRESCALE 6 0

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

###########################################################
# HPS1 FADC 
###########################################################

FADC250_CRATE hps1

FADC250_SLOT all

FADC250_DAC  3280
FADC250_W_OFFSET  2820
#FADC250_W_OFFSET  3020
FADC250_W_WIDTH   384

#raw mode
#FADC250_MODE      1
#FADC250_NSB       20
#FADC250_NSA       100
#FADC250_NPEAK     1

#pulse mode
FADC250_MODE      7
FADC250_NSB       16
FADC250_NSA       100
FADC250_NPEAK     3

#       channel:        0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15
FADC250_ADC_MASK        1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
FADC250_TRG_MASK        1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
#FADC250_TET_IGNORE_MASK 1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1

FADC250_TET 12

# BIG GAINS TO EMULATE BEAM DATA WITH COSMICS:
FADC250_GAIN 10.0


# Set LED system trigger threshold
FADC250_SLOT      20
FADC250_CH_TET    15   500
#       channel:        0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15
#FADC250_TET_IGNORE_MASK 1  1  1  1  1  1  1  1  1  1  1  1  1  0  0  0

# Set Hodoscope threshold
FADC250_SLOT 10
FADC250_TET  20
FADC250_GAIN 1.0

FADC250_CONF_FILE hps1_ped.cnf

FADC250_CRATE end

###########################################################
# HPS2 FADC 
###########################################################

FADC250_CRATE hps2

FADC250_SLOT all

FADC250_DAC  3280
FADC250_W_OFFSET  2820
FADC250_W_WIDTH   384

#raw mode
FADC250_MODE      1
FADC250_NSB       20
FADC250_NSA       100
FADC250_NPEAK     1

#pulse mode
#FADC250_MODE      7
#FADC250_NSB       16
#FADC250_NSA       100
#FADC250_NPEAK     3

#       channel:        0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15
FADC250_ADC_MASK        1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
FADC250_TRG_MASK        1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
#FADC250_TET_IGNORE_MASK 1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1

FADC250_TET 12

# BIG GAINS TO EMULATE BEAM DATA WITH COSMICS:
FADC250_GAIN 10.0

# Set cosmic system trigger threshold
# 12bit -> 1V: 40 = ~10mV threshold
# relative to pedestal
FADC250_SLOT      20
FADC250_CH_TET    13   40
FADC250_CH_TET    14   40
FADC250_CH_TET    15   40
#       channel:        0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15
#FADC250_TET_IGNORE_MASK 1  1  1  1  1  1  1  1  1  1  1  1  1  0  0  0

FADC250_SLOT 10
FADC250_TET  20
FADC250_GAIN 1.0

FADC250_CONF_FILE hps2_ped.cnf

FADC250_CRATE end

