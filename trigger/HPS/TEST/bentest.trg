##########################
# GTP
##########################
GTP_CRATE all

GTP_CLUSTER_PULSE_COIN      3    3

# SEED thrershold in MeV (0-8191)
GTP_CLUSTER_PULSE_THRESHOLD 50

GTP_CRATE end

##########################
# HPS 11 Crate
##########################

### TI
TI_CRATE hps11

TI_FIBER_DELAY_OFFSET 0x0 0x4f

TI_BUFFER_LEVEL 5
TI_BLOCK_LEVEL  1
#TI_BUFFER_LEVEL 8
#TI_BLOCK_LEVEL  40

# TI trigger RULES: NR triggers, time, timescale
# 1 trigger in 45*480ns=21.6us
#TI_HOLDOFF 1 45 1
#TI_HOLDOFF 1 50 1
# 35kHz, 20% live, ecal only
#TI_HOLDOFF 1 1 1
#TI_HOLDOFF 4 27 1
# 42kHz, 70% live, ecal only
#TI_HOLDOFF 1 1 1
#TI_HOLDOFF 4 1 1
# 36kHz, 21% live time, ecal only
#TI_HOLDOFF 1 21 1
#TI_HOLDOFF 4 27 1
# 1 trigger in 3*480ns=1.44us
TI_HOLDOFF 1 3 1
# 4 triggers in 23*3840ns=88.3us
#TI_HOLDOFF 4 23 1

TI_HOLDOFF 4 8 1


# PRESCALE-FACTOR = 2^N

# SINGLES-0:
TI_INPUT_PRESCALE 1  15

# SINGLES-1:
TI_INPUT_PRESCALE 2  15

# PAIRS-0:
TI_INPUT_PRESCALE 3  15

# PAIRS-1:
TI_INPUT_PRESCALE 4  15

# COSMIC/LED:
TI_INPUT_PRESCALE 5  0

# PULSER:
TI_INPUT_PRESCALE 6  0

TI_CRATE end


### SSP
SSP_CRATE hps11

SSP_ALLSLOTS
SSP_W_WIDTH   50
SSP_W_OFFSET  757

# COSMIC:
#SSP_W_WIDTH   100
#SSP_W_OFFSET  799

SSP_HPS_PULSER 50       # pulser period (s)

# ecal triggers:
# HPS SINGLES 0  -> TI TS1
#SSP_HPS_SET_IO_SRC		7	20	#ENABLED
SSP_HPS_SET_IO_SRC		7	0	#DISABLED

#HPS SINGLES 1   -> TI TS2
#SSP_HPS_SET_IO_SRC		8	21	#ENABLED
SSP_HPS_SET_IO_SRC		8	0	#DISABLED

#HPS PAIRS 0     -> TI TS3
#SSP_HPS_SET_IO_SRC		9	22	#ENABLED
SSP_HPS_SET_IO_SRC		9	0	#DISABLED

#HPS PAIRS 1     -> TI TS4
#SSP_HPS_SET_IO_SRC		10	23	#ENABLED
SSP_HPS_SET_IO_SRC		10	0	#DISABLED

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
SSP_HPS_SINGLES_EMIN  0  20   1
SSP_HPS_SINGLES_EMAX  0  8191 1
SSP_HPS_SINGLES_NMIN  0  1    1

# Singles 0 trigger
SSP_HPS_SINGLES_EMIN  1  60   1
SSP_HPS_SINGLES_EMAX  1  3000 1
SSP_HPS_SINGLES_NMIN  1  1    1

# Pairs 0 trigger
SSP_HPS_PAIRS_TIMECOINCIDENCE  0  4
SSP_HPS_PAIRS_EMIN             0  55
SSP_HPS_PAIRS_EMAX             0  1100
SSP_HPS_PAIRS_NMIN             0  1
SSP_HPS_PAIRS_SUMMAX_MIN       0  2000 120 0
SSP_HPS_PAIRS_DIFFMAX          0  1000     0
SSP_HPS_PAIRS_COPLANARITY      0  180      0
SSP_HPS_PAIRS_ENERGYDIST       0  5.5  100 0

# Pairs 1 trigger
SSP_HPS_PAIRS_TIMECOINCIDENCE  1  4
SSP_HPS_PAIRS_EMIN             1  60
SSP_HPS_PAIRS_EMAX             1  650
SSP_HPS_PAIRS_NMIN             1  1
SSP_HPS_PAIRS_SUMMAX_MIN       1  815 150  0
SSP_HPS_PAIRS_DIFFMAX          1  650      0
SSP_HPS_PAIRS_COPLANARITY      1  180      0
SSP_HPS_PAIRS_ENERGYDIST       1  5.5  10  0

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
FADC250_TET 6666

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



# ECAL PEDESTALS:
include trigger/HPS/small/fadc250/peds/EcalPeds.trg
include trigger/HPS/small/fadc250/peds/CalibPeds.trg


### FADC
FADC250_CRATE hps1

FADC250_SLOT all
FADC250_DAC  3300

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

FADC250_TET 6

FADC250_SLOT  3
FADC250_ALLCH_GAIN    1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 
FADC250_SLOT  4
FADC250_ALLCH_GAIN    1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000
FADC250_SLOT  6
FADC250_ALLCH_GAIN    1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000
FADC250_SLOT  7
FADC250_ALLCH_GAIN    1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000
FADC250_SLOT  8
FADC250_ALLCH_GAIN    1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000
FADC250_SLOT  9
FADC250_ALLCH_GAIN    1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000
FADC250_SLOT  14
FADC250_ALLCH_GAIN    1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000
FADC250_SLOT  15
FADC250_ALLCH_GAIN    1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000
FADC250_SLOT  16
FADC250_ALLCH_GAIN    1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000
FADC250_SLOT  17
FADC250_ALLCH_GAIN    1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000
FADC250_SLOT  18
FADC250_ALLCH_GAIN    1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000
FADC250_SLOT  19
FADC250_ALLCH_GAIN    1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000
FADC250_SLOT  20
FADC250_ALLCH_GAIN    1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000

# Set LED system trigger threshold
FADC250_SLOT      20
FADC250_CH_TET    15   500

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
FADC250_DAC  3300

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

# set to zero to read out ALL channels to maximize data rate:
#FADC250_TET 0

# set to high value to minimize data rate:
FADC250_TET 6

FADC250_SLOT  3
FADC250_ALLCH_GAIN    1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000
FADC250_SLOT  4
FADC250_ALLCH_GAIN    1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000
FADC250_SLOT  6
FADC250_ALLCH_GAIN    1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000
FADC250_SLOT  7
FADC250_ALLCH_GAIN    1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000
FADC250_SLOT  8
FADC250_ALLCH_GAIN    1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000
FADC250_SLOT  9
FADC250_ALLCH_GAIN    1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000
FADC250_SLOT  14
FADC250_ALLCH_GAIN    1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000
FADC250_SLOT  15
FADC250_ALLCH_GAIN    1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000
FADC250_SLOT  16
FADC250_ALLCH_GAIN    1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000
FADC250_SLOT  17
FADC250_ALLCH_GAIN    1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000
FADC250_SLOT  18
FADC250_ALLCH_GAIN    1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000
FADC250_SLOT  19
FADC250_ALLCH_GAIN    1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000
FADC250_SLOT  20
FADC250_ALLCH_GAIN    1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000

FADC250_CRATE end
#

# SVT stuff
include dpm/dpm-default.trg
#include dpm/dpm-3sam-3rms.trg

