

# SSP_HPS_SINGLES_PRESCALE N REGION XMIN XMAX PRESCALE
# #    N:        0 or 1 - selects the hps singles trigger bit
# #    REGION:   0 to 6 - selects which region index to define
# #    XMIN:    -31 to 31  - chooses the ECAL x coordinate to start region definition (inclusive)
# #    XMAX:    -31 to 31  - chooses the ECAL x coordinate to end region definition  (inclusive)
# #    PRESCALE: 0 to 65535 - set the prescale value for the region



##########################
# GTP
##########################
GTP_CRATE all

GTP_CLUSTER_PULSE_COIN      4    4

# SEED thrershold in MeV (0-8191)
GTP_CLUSTER_PULSE_THRESHOLD 100

GTP_CRATE end

##########################
# HPS 11 Crate
##########################

### TI
TI_CRATE hps11

TI_FIBER_DELAY_OFFSET 0x80 0xcf
TI_BUFFER_LEVEL 5
TI_BLOCK_LEVEL  10

## HOLD OFF
# 1.44 us holdoff:
TI_HOLDOFF 1 3 1
# 4 triggers in 10*3840ns
TI_HOLDOFF 4 10 1


# PRESCALE-FACTOR = 2

# SINGLES-0:
TI_INPUT_PRESCALE 1  13

# SINGLES-1:
TI_INPUT_PRESCALE 2  11

# PAIRS-0:
TI_INPUT_PRESCALE 3  6

# PAIRS-1:
TI_INPUT_PRESCALE 4  0

# COSMIC/LED:
TI_INPUT_PRESCALE 5  0

# PULSER:
TI_INPUT_PRESCALE 6  0

TI_CRATE end


### SSP
SSP_CRATE hps11

SSP_ALLSLOTS
SSP_W_WIDTH   50
SSP_W_OFFSET  753

# COSMIC:
#SSP_W_WIDTH   100
#SSP_W_OFFSET  799

SSP_HPS_PULSER 1000       # pulser period (s)

# ecal triggers:
# HPS SINGLES 0  -> TI TS1
SSP_HPS_SET_IO_SRC		7	20	#ENABLED
#SSP_HPS_SET_IO_SRC		7	0	#DISABLED

#HPS SINGLES 1   -> TI TS2
SSP_HPS_SET_IO_SRC		8	21	#ENABLED
#SSP_HPS_SET_IO_SRC		8	0	#DISABLED

#HPS PAIRS 0     -> TI TS3
SSP_HPS_SET_IO_SRC		9	22	#ENABLED
#SSP_HPS_SET_IO_SRC		9	0	#DISABLED

#HPS PAIRS 1     -> TI TS4
SSP_HPS_SET_IO_SRC		10	23	#ENABLED
#SSP_HPS_SET_IO_SRC		10	0	#DISABLED

# HPS COSMIC/LED -> TI TS5
#SSP_HPS_SET_IO_SRC		11	24	#ENABLED-LED
#SSP_HPS_SET_IO_SRC		11	25	#ENABLED-COSMIC
SSP_HPS_SET_IO_SRC		11	0	#DISABLED

# PULSER         -> TI TS6
SSP_HPS_SET_IO_SRC		12	18	#ENABLED
#SSP_HPS_SET_IO_SRC		12	0	#DISABLED


# coinc time 10=40 ns
SSP_HPS_COSMIC_TIMECOINCIDENCE  10

# cosmic B0 and B1 (136<<8) + led trigger (254<<0)
SSP_HPS_COSMIC_PATTERNCOINCIDENCE   35070

SSP_HPS_LATENCY 475

# Singles 0 trigger
SSP_HPS_SINGLES_EMIN  0  100  1
SSP_HPS_SINGLES_EMAX  0  2700 1
SSP_HPS_SINGLES_NMIN  0  3    1

# Singles 1 trigger
SSP_HPS_SINGLES_EMIN  1  1300  1
SSP_HPS_SINGLES_EMAX  1  2600 1
SSP_HPS_SINGLES_NMIN  1  3    1

# Pairs 0 trigger
SSP_HPS_PAIRS_TIMECOINCIDENCE  0  3
SSP_HPS_PAIRS_EMIN             0  300
SSP_HPS_PAIRS_EMAX             0  1200
SSP_HPS_PAIRS_NMIN             0  2
SSP_HPS_PAIRS_SUMMAX_MIN       0  1800 500 1
SSP_HPS_PAIRS_DIFFMAX          0  700      1
SSP_HPS_PAIRS_COPLANARITY      0  180      0
SSP_HPS_PAIRS_ENERGYDIST       0  5.5  600 0

# Pairs 1 trigger
SSP_HPS_PAIRS_TIMECOINCIDENCE  1  3
SSP_HPS_PAIRS_EMIN             1  150
SSP_HPS_PAIRS_EMAX             1  1400
SSP_HPS_PAIRS_NMIN             1  2
SSP_HPS_PAIRS_SUMMAX_MIN       1  1900 600  1
SSP_HPS_PAIRS_DIFFMAX          1  1100      1
SSP_HPS_PAIRS_COPLANARITY      1  40        1
SSP_HPS_PAIRS_ENERGYDIST       1  5.5   600 1

SSP_CRATE end


### FADC: RF SIGNALS, HPS11, SLOT 13, CHANNELS 0/1
FADC250_CRATE hps11

FADC250_SLOT all
FADC250_DAC  3300
FADC250_W_OFFSET 3012
FADC250_W_WIDTH 400

FADC250_MODE      1
FADC250_NSB       12
FADC250_NSA       240
FADC250_NPEAK     1

#       channel:  0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15
FADC250_ADC_MASK  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
FADC250_TRG_MASK  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1

#Set RF clock threshold
FADC250_TET 800

FADC250_SLOT 13
FADC250_ALLCH_PED 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0

FADC250_CRATE end


##########################
# HPS 12 Crate
##########################

### TI
TI_CRATE hps12
TI_FIBER_DELAY_OFFSET 0x80 0xc9
TI_CRATE end


##########################
# HPS 1 Crate
##########################

### TI
TI_CRATE hps1
TI_FIBER_DELAY_OFFSET 0x80 0xc9
TI_CRATE end

### FADC
FADC250_CRATE hps1

FADC250_SLOT all

FADC250_W_OFFSET 3012
FADC250_W_WIDTH   200

# COSMIC:
#FADC250_W_OFFSET 3180
#FADC250_W_WIDTH   400

FADC250_MODE      1
FADC250_NSB       20
FADC250_NSA       100
FADC250_NPEAK     1

#       channel:        0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15
FADC250_ADC_MASK        1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
FADC250_TRG_MASK        1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
FADC250_TET_IGNORE_MASK 0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0

FADC250_TET 18

# Set LED system trigger threshold
FADC250_SLOT      20
FADC250_CH_TET    15   500

#       channel:        0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15
FADC250_TET_IGNORE_MASK 0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0

FADC250_CRATE end

##########################
# HPS 2 Crate
##########################

### TI
TI_CRATE hps2
TI_FIBER_DELAY_OFFSET 0x80 0xc9
TI_CRATE end

### FADC
FADC250_CRATE hps2

FADC250_SLOT all

FADC250_W_OFFSET 3012
FADC250_W_WIDTH   200

# COSMIC:
#FADC250_W_OFFSET 3180
#FADC250_W_WIDTH   400

FADC250_MODE      1
FADC250_NSB       20
FADC250_NSA       100
FADC250_NPEAK     1

#       channel:        0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15
FADC250_ADC_MASK        1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
FADC250_TRG_MASK        1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
FADC250_TET_IGNORE_MASK 0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0

FADC250_TET 18


# Set cosmic system trigger threshold
# 12bit -> 1V: 40 = ~10mV threshold
# relative to pedestal
FADC250_SLOT      20
FADC250_CH_TET    13   40
FADC250_CH_TET    14   40
#       channel:        0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15
FADC250_TET_IGNORE_MASK 0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0


FADC250_CRATE end

include trigger/HPS/small/dsc2/hps11.cnf
include trigger/HPS/small/dsc2/hps12.cnf

# ECAL PEDESTALS:
include trigger/HPS/small/fadc250/peds/EcalPeds_200nA.trg

# ECAL GAINS:
include trigger/HPS/small/fadc250/gains/EcalGains.trg

# SVT stuff
#include dpm/dpm-default-Lat146.trg
include dpm/dpm-isha100-vfs0.trg
include dpm/dpm-3sam-3rms-isha100-vfs0.trg


