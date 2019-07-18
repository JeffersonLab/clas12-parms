include trigger/HPS/Run2019/trigger/hps_trigger_v3-NABO.cnf

# ECAL Gain
include trigger/HPS/Run2019/ecal_gain/EcalGains-HUGE.cnf

# ECAL Pedestals
include trigger/HPS/Run2019/ecal_ped/EcalPeds_0nA.cnf

# Hodoscope Gain
include trigger/HPS/Run2019/hodoscope_gain/HodoscopeGains.cnf

# Hodoscope Pedestal
include trigger/HPS/Run2019/hodoscope_ped/HodoscopePeds_0nA.cnf

# RF Pedestals
include trigger/HPS/Run2019/ecal_ped/RfPeds.cnf

# SVT config
include trigger/HPS/Run2019/svt/svt_pedestal.cnf

###########################################################
# TS Crate 
###########################################################
TS_CRATE hps11

TS_BLOCK_LEVEL 10
TS_BUFFER_LEVEL 8

#TS_HOLDOFF 1 4 1
#TS_HOLDOFF 2 4 1
#TS_HOLDOFF 3 3 1
#TS_HOLDOFF 4 2 1
#TS_HOLDOFF 1 15 1
#TS_HOLDOFF 2 15 1
#TS_HOLDOFF 3 12 1
#TS_HOLDOFF 4 8 1
#TS_HOLDOFF 1 60 1
#TS_HOLDOFF 2 60 1
#TS_HOLDOFF 3 60 1
#TS_HOLDOFF 4 60 1


# TS front panel inputs: faraday cup
TS_FP_INPUT_MASK 0x00008000
##TS_FP_INPUT_MASK 0x00000000

### Faraday cup prescale  8 means 129
### Faraday cup prescale 12 means 2049
TS_FP_PRESCALE  16 8

# first arg: 0-disable, 1-enable; second arg: prescale (9-700Hz, 7-3.5kHz, 6-6.1kHz, 5-10kHz(65%live), 3-60kHz)
TS_RANDOM_TRIGGER 0 6

TS_CRATE end



#FADC250_CRATE hps1
#FADC250_SLOT 10
#FADC250_TET  40
#FADC250_CRATE end

#FADC250_CRATE hps2
#FADC250_SLOT 10
#FADC250_TET  40
#FADC250_CRATE end





###################################
# Trigger Ouput Setup
###################################
VTP_CRATE all

# Prescale: 0 to 65535 (note: 0 disables the trigger output)
VTP_HPS_PRESCALE               0        0   # Single 0 Top    ( 150-8191) MeV (-31,31)   Low energy cluster 
VTP_HPS_PRESCALE               1        0   # Single 1 Top    ( 300-3000) MeV (  5,31)   e+
VTP_HPS_PRESCALE               2        1   # Single 2 Top    ( 300-3000) MeV (  5,31)   e+ : Position dependent energy cut
VTP_HPS_PRESCALE               3        0   # Single 3 Top    ( 300-3000) MeV (  5,31)   e+ : HODO L1*L2  Match with cluster
VTP_HPS_PRESCALE               4        0   # Single 0 Bot    ( 150-8191) MeV (-31,31)   Low energy cluster  
VTP_HPS_PRESCALE               5        0   # Single 1 Bot    ( 300-3000) MeV (  5,31)   e+
VTP_HPS_PRESCALE               6        1   # Single 2 Bot    ( 300-3000) MeV (  5,31)   e+ : Position dependent energy cut
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

