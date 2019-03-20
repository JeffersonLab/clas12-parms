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

TI_FIBER_DELAY_OFFSET 0x80 0xcf

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
#include trigger/HPS/small/fadc250/peds/EcalPeds.trg
#include trigger/HPS/small/fadc250/peds/CalibPeds.trg


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

FADC250_TET 400

FADC250_SLOT  3
FADC250_ALLCH_GAIN    0.213   0.232   0.213   0.220   0.229   0.186   0.188   0.214   0.189   0.206   0.206   0.215   0.213   0.221   0.231   0.200
FADC250_SLOT  4
FADC250_ALLCH_GAIN    0.204   0.198   0.219   0.207   0.217   0.217   0.218   0.210   0.211   0.224   0.222   0.215   0.228   0.269   0.196   0.209
FADC250_SLOT  5
FADC250_ALLCH_GAIN    0.205   0.203   0.179   0.211   0.192   0.211   0.204   0.214   0.205   0.204   0.201   0.228   0.209   0.219   0.188   0.213
FADC250_SLOT  6
FADC250_ALLCH_GAIN    0.215   0.199   0.225   0.186   0.200   0.177   0.232   0.213   0.225   0.197   0.212   0.217   0.200   0.188   0.212   0.203
FADC250_SLOT  7
FADC250_ALLCH_GAIN    0.224   0.217   0.194   0.206   0.215   0.220   0.217   0.206   0.190   0.160   0.227   0.193   0.217   0.201   0.192   0.221
FADC250_SLOT  8
FADC250_ALLCH_GAIN    0.208   0.205   0.196   0.208   0.207   0.205   0.201   0.209   0.200   0.204   0.196   0.225   0.223   0.197   0.213   0.212
FADC250_SLOT  9
FADC250_ALLCH_GAIN    0.220   0.215   0.207   0.187   0.178   0.207   0.209   0.209   0.202   0.190   0.221   0.197   0.195   0.220   0.201   0.225
FADC250_SLOT  14
FADC250_ALLCH_GAIN    0.205   0.203   0.211   0.257   0.219   0.208   0.217   0.189   0.185   0.202   0.197   0.233   0.208   0.232   0.192   0.232
FADC250_SLOT  15
FADC250_ALLCH_GAIN    0.200   0.218   0.217   0.206   0.238   0.217   0.211   0.205   0.213   0.214   0.189   0.213   0.221   0.216   0.209   0.212
FADC250_SLOT  16
FADC250_ALLCH_GAIN    0.198   0.197   0.195   0.213   0.229   0.191   0.194   0.206   0.200   0.215   0.200   0.222   0.200   0.219   0.222   0.203
FADC250_SLOT  17
FADC250_ALLCH_GAIN    0.213   0.218   0.217   0.190   0.219   0.227   0.202   0.206   0.210   0.212   0.227   0.201   0.212   0.215   0.216   0.209
FADC250_SLOT  18
FADC250_ALLCH_GAIN    0.191   0.231   0.194   0.208   0.219   0.211   0.207   0.195   0.191   0.207   0.201   0.199   0.208   0.211   0.217   0.201
FADC250_SLOT  19
FADC250_ALLCH_GAIN    0.191   0.197   0.204   0.208   0.209   0.215   0.211   0.216   0.205   0.248   0.216   0.225   0.238   0.236   0.193   0.197
FADC250_SLOT  20
FADC250_ALLCH_GAIN    0.210   0.213   0.178   0.194   0.196   0.209   0.248   0.210   0.188   0.229   0.242   0.227   0.207   1.000   1.000   1.000

# Set LED system trigger threshold
FADC250_SLOT      20
FADC250_CH_TET    15   500

#       channel:        0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15
#FADC250_TET_IGNORE_MASK 0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0

#FADC250_SLOT 16
#FADC250_CH_TET 0 3
#FADC250_CH_TET 1 3
#FADC250_CH_TET 2 3
#FADC250_CH_TET 3 3
#FADC250_CH_TET 4 3
#FADC250_CH_TET 5 3
#FADC250_CH_TET 6 3
#FADC250_CH_TET 7 3
#FADC250_CH_TET 8 3
#FADC250_CH_TET 9 3
#FADC250_CH_TET 10 3
#FADC250_CH_TET 11 3
#FADC250_CH_TET 12 3
#FADC250_CH_TET 13 3
#FADC250_CH_TET 14 3
#FADC250_CH_TET 15 3
#FADC250_SLOT 3
#FADC250_CH_TET 0 3
#FADC250_CH_TET 1 3
#FADC250_CH_TET 2 3
#FADC250_CH_TET 3 3
#FADC250_CH_TET 4 3
#FADC250_CH_TET 5 3
#FADC250_CH_TET 6 3
#FADC250_CH_TET 7 3
#FADC250_CH_TET 8 3
#FADC250_CH_TET 9 3
#FADC250_CH_TET 10 3
#FADC250_CH_TET 11 3
#FADC250_CH_TET 12 3
#FADC250_CH_TET 13 3
#FADC250_CH_TET 14 3
#FADC250_CH_TET 15 3

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
FADC250_TET 400


FADC250_SLOT  3
FADC250_ALLCH_GAIN    0.290   0.224   0.217   0.284   0.246   0.227   0.262   0.220   0.244   0.214   0.220   0.191   0.208   0.214   4.226   0.214
FADC250_SLOT  4
FADC250_ALLCH_GAIN    0.202   0.206   0.232   0.239   0.209   0.234   0.203   0.196   0.202   0.221   0.219   0.240   0.209   0.230   0.210   0.193
FADC250_SLOT  5
FADC250_ALLCH_GAIN    0.208   0.200   0.194   0.203   0.197   0.200   0.208   0.209   0.203   0.218   0.200   0.202   0.199   0.213   0.213   0.190
FADC250_SLOT  6
FADC250_ALLCH_GAIN    0.194   0.182   0.195   0.184   0.188   0.210   0.218   0.237   0.213   0.211   0.203   0.185   0.221   0.206   0.212   0.202
FADC250_SLOT  7
FADC250_ALLCH_GAIN    0.200   0.218   0.214   0.180   0.217   0.201   0.227   0.221   0.221   0.236   0.217   0.209   0.228   0.213   0.207   0.229
FADC250_SLOT  8
FADC250_ALLCH_GAIN    0.201   0.194   0.297   0.202   0.211   0.238   0.189   0.204   0.203   0.223   0.219   0.194   0.211   0.202   0.194   0.209
FADC250_SLOT  9
FADC250_ALLCH_GAIN    0.194   0.200   0.199   0.204   0.221   0.180   0.204   0.217   0.213   0.207   0.186   0.182   0.201   0.205   0.202   0.215
FADC250_SLOT  14
FADC250_ALLCH_GAIN    0.215   0.209   0.196   0.100   0.189   0.209   0.196   0.237   0.208   0.214   0.151   0.211   0.183   0.207   0.223   0.239
FADC250_SLOT  15
FADC250_ALLCH_GAIN    0.212   0.208   0.215   0.207   0.215   0.191   0.191   0.202   0.192   0.220   0.190   0.188   0.212   0.190   0.205   0.198
FADC250_SLOT  16
FADC250_ALLCH_GAIN    0.224   0.219   0.185   4.220   0.215   0.191   0.200   0.222   0.214   0.226   0.229   0.237   0.220   0.225   0.205   0.209
FADC250_SLOT  17
FADC250_ALLCH_GAIN    0.189   0.188   0.186   0.209   0.190   0.190   0.221   0.193   0.212   0.211   0.197   0.204   0.233   0.191   0.193   0.189
FADC250_SLOT  18
FADC250_ALLCH_GAIN    0.204   0.213   0.218   0.212   0.199   0.197   0.219   0.190   0.200   0.220   0.208   0.211   4.210   0.202   0.228   0.268
FADC250_SLOT  19
FADC250_ALLCH_GAIN    0.202   0.251   0.194   0.197   0.243   0.217   0.214   0.208   0.227   0.202   0.204   0.198   4.201   0.219   0.215   0.199
FADC250_SLOT  20
FADC250_ALLCH_GAIN    0.241   0.216   0.219   0.199   0.204   0.206   0.212   0.209   0.213   0.222   0.212   0.221   0.226   1.000   1.000   1.000

# Set cosmic system trigger threshold
# 12bit -> 1V: 40 = ~10mV threshold
# relative to pedestal
#FADC250_SLOT      20
#FADC250_CH_TET    13   40
#FADC250_CH_TET    14   40
#       channel:        0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15
#FADC250_TET_IGNORE_MASK 0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0

# SET TWO CHANNELS TO HVAE LOW THRESHOLDS:

#FADC250_SLOT 16
#FADC250_CH_TET 3 3
FADC250_SLOT 3
FADC250_CH_TET 14 1
FADC250_SLOT 19
FADC250_CH_TET 12 1

#FADC250_SLOT 14
#FADC250_CH_TET 0 3
#FADC250_CH_TET 1 3
#FADC250_CH_TET 2 3
#FADC250_CH_TET 3 3
#FADC250_CH_TET 4 3
#FADC250_CH_TET 5 3
#FADC250_CH_TET 6 3
#FADC250_CH_TET 7 3
#FADC250_CH_TET 8 3
#FADC250_CH_TET 9 3
#FADC250_CH_TET 10 3
#FADC250_CH_TET 11 3
#FADC250_CH_TET 12 3
#FADC250_CH_TET 13 3
#FADC250_CH_TET 14 3
#FADC250_CH_TET 15 3


#FADC250_SLOT 3
#FADC250_CH_TET 0 3
#FADC250_CH_TET 1 3
#FADC250_CH_TET 2 3
#FADC250_CH_TET 3 3
#FADC250_CH_TET 4 3
#FADC250_CH_TET 5 3
#FADC250_CH_TET 6 3
#FADC250_CH_TET 7 3
#FADC250_CH_TET 8 3
#FADC250_CH_TET 9 3
#FADC250_CH_TET 10 3
#FADC250_CH_TET 11 3
#FADC250_CH_TET 12 3
#FADC250_CH_TET 13 3
#FADC250_CH_TET 14 3
#FADC250_CH_TET 15 3
#FADC250_CRATE end
#

# SVT stuff
include dpm/dpm-default.trg
#include dpm/dpm-3sam-3rms-7532.trg

