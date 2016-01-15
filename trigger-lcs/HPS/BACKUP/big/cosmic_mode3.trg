
########################################################################
######################## TI ############################################
########################################################################

TI_CRATE hps1
TI_FIBER_DELAY_OFFSET 0x80 0xc9
TI_BLOCK_LEVEL 1
TI_CRATE end

TI_CRATE hps2
TI_FIBER_DELAY_OFFSET 0x80 0xc9
TI_BLOCK_LEVEL 1
TI_CRATE end

TI_CRATE hps11
TI_FIBER_DELAY_OFFSET 0x80 0xcf
TI_BUFFER_LEVEL 8
TI_BLOCK_LEVEL  1
TI_INPUT_PRESCALE 1  0
TI_INPUT_PRESCALE 2  0
TI_INPUT_PRESCALE 3  0
TI_INPUT_PRESCALE 4  0
TI_INPUT_PRESCALE 5  0
TI_INPUT_PRESCALE 6  0
TI_CRATE end

TI_CRATE hps12
TI_FIBER_DELAY_OFFSET 0x80 0xc9
TI_BLOCK_LEVEL 1
TI_CRATE end


########################################################################
######################## SSP ###########################################
########################################################################

SSP_CRATE hps11
SSP_ALLSLOTS

SSP_BERR  1
SSP_BLOCK_LEVEL 1
SSP_W_WIDTH   100
SSP_W_OFFSET  799
SSP_HPS_PULSER 1

# disable ecal triggers:
SSP_HPS_SET_IO_SRC    7     0   # HPS SINGLES 0 -> TI TS1
SSP_HPS_SET_IO_SRC    8     0   # HPS SINGLES 1 -> TI TS2
SSP_HPS_SET_IO_SRC    9     0   # HPS PAIRS 0   -> TI TS3
SSP_HPS_SET_IO_SRC    10    0   # HPS PAIRS 1   -> TI TS4

# calibration triggers:
#SSP_HPS_SET_IO_SRC    11    24   # HPS LED       -> TI TS5
SSP_HPS_SET_IO_SRC    11    25   # HPS COSMIC    -> TI TS5
SSP_HPS_SET_IO_SRC    12    18   # PULSER        -> TI TS6

# coinc time 10=40 ns
SSP_HPS_COSMIC_TIMECOINCIDENCE  10

# cosmic B0 and B1 (136<<8) + led trigger (254<<0)
SSP_HPS_COSMIC_PATTERNCOINCIDENCE   35070

SSP_HPS_LATENCY 475

# Singles 0 trigger
SSP_HPS_SINGLES_EMIN  0  10     1
SSP_HPS_SINGLES_EMAX  0  8191   1
SSP_HPS_SINGLES_NMIN  0  2      1

# Singles 1 trigger
SSP_HPS_SINGLES_EMIN  1  10     1
SSP_HPS_SINGLES_EMAX  1  50     1
SSP_HPS_SINGLES_NMIN  1  2      1

# Pairs 0 trigger
SSP_HPS_PAIRS_TIMECOINCIDENCE  0  4
SSP_HPS_PAIRS_EMIN             0  20
SSP_HPS_PAIRS_EMAX             0  55
SSP_HPS_PAIRS_NMIN             0  1
SSP_HPS_PAIRS_SUMMAX_MIN       0  2000 10   0
SSP_HPS_PAIRS_DIFFMAX          0  1200      0
SSP_HPS_PAIRS_COPLANARITY      0  40        0
SSP_HPS_PAIRS_ENERGYDIST       0  5.5  400  0

# Pairs 1 trigger
SSP_HPS_PAIRS_TIMECOINCIDENCE  1  4
SSP_HPS_PAIRS_EMIN             1  10
SSP_HPS_PAIRS_EMAX             1  1800
SSP_HPS_PAIRS_NMIN             1  2
SSP_HPS_PAIRS_SUMMAX_MIN       1  2000 20   0
SSP_HPS_PAIRS_DIFFMAX          1  1200      0
SSP_HPS_PAIRS_COPLANARITY      1  40        0
SSP_HPS_PAIRS_ENERGYDIST       1  5.5  400  0

SSP_CRATE end



########################################################################
######################## GTP ###########################################
########################################################################

GTP_CRATE all
# hit coincidence window (units = 4ns)
GTP_CLUSTER_PULSE_COIN      2    2
# SEED thrershold in MeV (0-8191)
GTP_CLUSTER_PULSE_THRESHOLD 10
GTP_CRATE end



########################################################################
######################## DSC2 ##########################################
########################################################################

DSC2_CRATE     all
DSC2_SLOT       all
DSC2_WIDTH       20     40
DSC2_THRESHOLD   10  10
#DSC2_TRGDIGITAL 140      0
DSC2_CRATE     end



########################################################################
######################## FADC250 #######################################
########################################################################

FADC250_CRATE hps1
FADC250_SLOT all
FADC250_DAC  3300
FADC250_W_OFFSET 3180
FADC250_W_WIDTH   400

FADC250_MODE      3
FADC250_NSB       20
FADC250_NSA       100
FADC250_NPEAK     1

#       channel:        0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15
FADC250_ADC_MASK        1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
FADC250_TRG_MASK        1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
#FADC250_TET_IGNORE_MASK 1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1

FADC250_TET 12

# Set LED system trigger threshold
FADC250_SLOT      20
FADC250_CH_TET    15   500
#FADC250_TET_IGNORE_MASK 1  1  1  1  1  1  1  1  1  1  1  1  1  0  0  0

FADC250_CRATE end


FADC250_CRATE hps2
FADC250_SLOT all
FADC250_DAC  3300
FADC250_W_OFFSET 3180
FADC250_W_WIDTH   400

#raw mode
FADC250_MODE      3
FADC250_NSB       20
FADC250_NSA       100
FADC250_NPEAK     1

#       channel:        0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15
FADC250_ADC_MASK        1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
FADC250_TRG_MASK        1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
#FADC250_TET_IGNORE_MASK 1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1

#
FADC250_TET 12

# Set cosmic system trigger threshold
# 40 ADC = ~10mV
FADC250_SLOT      20
FADC250_CH_TET    13   40
FADC250_CH_TET    14   40
FADC250_CH_TET    15   40
#       channel:        0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15
#FADC250_TET_IGNORE_MASK 1  1  1  1  1  1  1  1  1  1  1  1  1  0  0  0

FADC250_CRATE end

