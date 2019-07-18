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



TS_CRATE all

TS_BLOCK_LEVEL 40
TS_BUFFER_LEVEL 8

TS_HOLDOFF 1 4 1
TS_HOLDOFF 2 4 1
TS_HOLDOFF 3 3 1
TS_HOLDOFF 4 2 1

# TS front panel inputs:  
TS_FP_INPUT_MASK 0xFFFFFFFF

# TS GTP inputs:  
TS_GTP_INPUT_MASK 0xFFFFFFFF

# first arg: 0-disable, 1-enable; second arg: prescale (15-7Hz, 7-3.5kHz, 3-60kHz)
TS_RANDOM_TRIGGER 1 6

TS_CRATE end



RCE_CRATE all
RCE_CONFIG_FILE /usr/clas12/release/1.4.0/slac_svt/heavy-photon-daq/software/config/rce-test-jlab.yml 
RCE_EB_0_CONFIG_FILE /usr/clas12/release/1.4.0/slac_svt/eb_config0.txt
RCE_EB_1_CONFIG_FILE /usr/clas12/release/1.4.0/slac_svt/eb_config1.txt
RCE_CRATE end
