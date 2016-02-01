##########################          
# GTP                               
##########################          
GTP_CRATE all                       

GTP_CLUSTER_PULSE_COIN      3    3

# SEED thrershold in MeV (0-8191)
GTP_CLUSTER_PULSE_THRESHOLD 35   

GTP_CRATE end

include fadc250/hps1.cnf-LED-MODE1
include fadc250/hps2.cnf-LED-MODE1

include dsc2/hps11.cnf-HIGHTHRESH
include dsc2/hps12.cnf-HIGHTHRESH

include ti/hps11.cnf-NONBLOCKING

include ssp/hps_led.cnf
