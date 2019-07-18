include trigger/HPS/Run2019/trigger/hps_trigger_v3.cnf

# ECAL Gain
include trigger/HPS/Run2019/ecal_gain/EcalGains.cnf

# ECAL Pedestals
include trigger/HPS/Run2019/ecal_ped/EcalPeds_0nA.cnf

# Hodoscope Gain
include trigger/HPS/Run2019/hodoscope_gain/HodoscopeGains.cnf

# Hodoscope Pedestal
include trigger/HPS/Run2019/hodoscope_ped/HodoscopePeds_0nA.cnf

###########################################################
# TS Crate 
###########################################################
TS_CRATE hps11

TS_BLOCK_LEVEL 10
TS_BUFFER_LEVEL 8

# TS front panel inputs: faraday cup 
TS_FP_INPUT_MASK 0x00000000

### Faraday cup prescale 5 means 17 
TS_FP_PRESCALE  16 0

# TS GTP trigger inputs: disable all, so that we can enable all VTP outputs
#          TS will then be able record trigger type with these bits
TS_GTP_INPUT_MASK 0x0

# first arg: 0-disable, 1-enable; second arg: prescale (9-700Hz, 7-3.5kHz, 6-6.1kHz, 5-10kHz(65%live), 3-60kHz)
TS_RANDOM_TRIGGER 1 4


TS_CRATE end


###################################                                                                                          
# Trigger Ouput Setup                                                                                                        
###################################                                                                                          
VTP_CRATE all                                                                                                                
                                                                                                                             
# Prescale: 0 to 65535 (note: 0 disables the trigger output)                                                                 
VTP_HPS_PRESCALE               0        1   # Single 0 Top    ( 150-8191) MeV (-31,31)   Low energy cluster                  
VTP_HPS_PRESCALE               1        1   # Single 1 Top    ( 300-3000) MeV (  5,31)   e+                                  
VTP_HPS_PRESCALE               2        1   # Single 2 Top    ( 300-3000) MeV (  5,31)   e+ : Position dependent energy cut  
VTP_HPS_PRESCALE               3        1   # Single 3 Top    ( 300-3000) MeV (  5,31)   e+ : HODO L1*L2  Match with cluster 
VTP_HPS_PRESCALE               4        1   # Single 0 Bot    ( 150-8191) MeV (-31,31)   Low energy cluster                  
VTP_HPS_PRESCALE               5        1   # Single 1 Bot    ( 300-3000) MeV (  5,31)   e+                                  
VTP_HPS_PRESCALE               6        1   # Single 2 Bot    ( 300-3000) MeV (  5,31)   e+ : Position dependent energy cut  
VTP_HPS_PRESCALE               7        1   # Single 3 Bot    ( 300-3000) MeV (  5,31)   e+ : HODO L1*L2  Match with cluster 
VTP_HPS_PRESCALE               8        1   # Pair 0          A'                                                             
VTP_HPS_PRESCALE               9        1   # Pair 1          Moller                                                         
VTP_HPS_PRESCALE               10       1   # Pair 2          pi0                                                            
VTP_HPS_PRESCALE               11       1   # Pair 3          -                                                              
VTP_HPS_PRESCALE               12       1   # LED                                                                            
VTP_HPS_PRESCALE               13       1   # Cosmic                                                                         
VTP_HPS_PRESCALE               14       1   # Hodoscope                                                                      
VTP_HPS_PRESCALE               15       1   # Pulser                                                                         
VTP_HPS_PRESCALE               16       1   # Multiplicity-0 2 Cluster Trigger                                               
VTP_HPS_PRESCALE               17       1   # Multiplicity-1 3 Cluster trigger                                               
VTP_HPS_PRESCALE               18       1   # FEE Top       ( 2600-5200)                                                     
VTP_HPS_PRESCALE               19       1   # FEE Bot       ( 2600-5200)                                                     
                                                                                                                             
VTP_CRATE end                                                                                                                


