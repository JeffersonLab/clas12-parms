########################################
# SLAC test setup adopted for HPS setup
########################################

#TI_CRATE all
#TI_BLOCK_LEVEL 40
#TI_BUFFER_LEVEL 8 
#TI_HOLDOFF 1 4 1
#TI_HOLDOFF 2 4 1
#TI_HOLDOFF 3 3 1
#TI_HOLDOFF 4 2 1
#TI_INPUT_MASK 1 1 1 1 1 1
#TI_RANDOM_TRIGGER 1 4
#TI_CRATE end

include trigger/HPS/Run2019/trigger/hps_trigger_v1.cnf


TS_CRATE all

TS_BLOCK_LEVEL 1
TS_BUFFER_LEVEL 1

TS_HOLDOFF 1 4 1
TS_HOLDOFF 2 4 1
TS_HOLDOFF 3 3 1
TS_HOLDOFF 4 2 1

# TS front panel inputs:  
TS_FP_INPUT_MASK 0x00000000

# TS GTP inputs:  
TS_GTP_INPUT_MASK 0xFFFFFFFF

# first arg: 0-disable, 1-enable; second arg: prescale (15-7Hz, 7-3.5kHz, 3-60kHz)
TS_RANDOM_TRIGGER 0 15

TS_CRATE end

VTP_CRATE all

# Pulser trigger: frequency: 0 to 125MHz, units: Hz
VTP_HPS_CALIB_PULSER_EN         1
VTP_HPS_CALIB_PULSER_FREQ       100.0

# Prescale: 0 to 65535 (note: 0 disables the trigger output)
VTP_HPS_PRESCALE               0        0   # Single 0 Top    ( 150-8191) MeV (-31,31)   Low energy cluster 
VTP_HPS_PRESCALE               1        0   # Single 1 Top    ( 300-3000) MeV (  5,31)   e+
VTP_HPS_PRESCALE               2        0   # Single 2 Top    ( 300-3000) MeV (  5,31)   e+ : Position dependent energy cut
VTP_HPS_PRESCALE               3        0   # Single 3 Top    ( 300-3000) MeV (  5,31)   e+ : HODO L1*L2  Match with cluster
VTP_HPS_PRESCALE               4        0   # Single 0 Bot    ( 150-8191) MeV (-31,31)   Low energy cluster  
VTP_HPS_PRESCALE               5        0   # Single 1 Bot    ( 300-3000) MeV (  5,31)   e+
VTP_HPS_PRESCALE               6        0   # Single 2 Bot    ( 300-3000) MeV (  5,31)   e+ : Position dependent energy cut
VTP_HPS_PRESCALE               7        0   # Single 3 Bot    ( 300-3000) MeV (  5,31)   e+ : HODO L1*L2  Match with cluster
VTP_HPS_PRESCALE               8        0   # Pair 0          A'
VTP_HPS_PRESCALE               9        0   # Pair 1          Moller
VTP_HPS_PRESCALE               10       0   # Pair 2          pi0
VTP_HPS_PRESCALE               11       0   # Pair 3          -
VTP_HPS_PRESCALE               12       0   # LED
VTP_HPS_PRESCALE               13       0   # Cosmic
VTP_HPS_PRESCALE               14       0   # Hodoscope
VTP_HPS_PRESCALE               15       1   # Pulser
VTP_HPS_PRESCALE               16       0   # Multiplicity-0 2 Cluster Trigger
VTP_HPS_PRESCALE               17       0   # Multiplicity-1 3 Cluster trigger
VTP_HPS_PRESCALE               18       0   # FEE Top       ( 2600-5200)
VTP_HPS_PRESCALE               19       0   # FEE Bot       ( 2600-5200)

VTP_CRATE end


RCE_CRATE all
RCE_CONFIG_FILE /usr/clas12/release/1.4.0/slac_svt/heavy-photon-daq/software/config/baseline_run.yml 
RCE_EB_0_CONFIG_FILE /usr/clas12/release/1.4.0/slac_svt/eb_config0.txt
RCE_EB_1_CONFIG_FILE /usr/clas12/release/1.4.0/slac_svt/eb_config1.txt
RCE_CRATE end
