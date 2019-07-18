#
# FADCs for forward carriage
#
#
# Cole's stuff
#
include fadc250/s1/adcecal1_tet20_mode1.cnf
include fadc250/s1/adcpcal1_tet20_mode1.cnf
include fadc250/s1/adcftof1_tet20_mode1.cnf
include fadc250/s2/adcecal2_tet20_mode1.cnf
include fadc250/s2/adcpcal2_tet20_mode1.cnf
include fadc250/s2/adcftof2_tet20_mode1.cnf
include fadc250/s3/adcecal3_tet20_mode1.cnf
include fadc250/s3/adcpcal3_tet20_mode1.cnf
include fadc250/s3/adcftof3_tet20_mode1.cnf
include fadc250/s4/adcecal4_tet20_mode1.cnf
include fadc250/s4/adcpcal4_tet20_mode1.cnf
include fadc250/s4/adcftof4_tet20_mode1.cnf
include fadc250/s5/adcecal5_tet20_mode1.cnf
include fadc250/s5/adcpcal5_tet20_mode1.cnf
include fadc250/s5/adcftof5_tet20_mode1.cnf
include fadc250/s6/adcecal6_tet20_mode1.cnf
include fadc250/s6/adcpcal6_tet20_mode1.cnf
include fadc250/s6/adcftof6_tet20_mode1.cnf


#
# our pedestals
#
FADC250_CRATE adcecal1
include trigger/PEDS/adcecal1_ped.cnf
FADC250_CRATE end
FADC250_CRATE adcecal2
include trigger/PEDS/adcecal2_ped.cnf
FADC250_CRATE end
FADC250_CRATE adcecal3
include trigger/PEDS/adcecal3_ped.cnf
FADC250_CRATE end
FADC250_CRATE adcecal4
include trigger/PEDS/adcecal4_ped.cnf
FADC250_CRATE end
FADC250_CRATE adcecal5
include trigger/PEDS/adcecal5_ped.cnf
FADC250_CRATE end
FADC250_CRATE adcecal6
include trigger/PEDS/adcecal6_ped.cnf
FADC250_CRATE end

FADC250_CRATE adcpcal1
include trigger/PEDS/adcpcal1_ped.cnf
FADC250_CRATE end
FADC250_CRATE adcpcal2
include trigger/PEDS/adcpcal2_ped.cnf
FADC250_CRATE end
FADC250_CRATE adcpcal3
include trigger/PEDS/adcpcal3_ped.cnf
FADC250_CRATE end
FADC250_CRATE adcpcal4
include trigger/PEDS/adcpcal4_ped.cnf
FADC250_CRATE end
FADC250_CRATE adcpcal5
include trigger/PEDS/adcpcal5_ped.cnf
FADC250_CRATE end
FADC250_CRATE adcpcal6
include trigger/PEDS/adcpcal6_ped.cnf
FADC250_CRATE end

FADC250_CRATE adcftof1
include trigger/PEDS/adcftof1_ped.cnf
FADC250_CRATE end
FADC250_CRATE adcftof2
include trigger/PEDS/adcftof2_ped.cnf
FADC250_CRATE end
FADC250_CRATE adcftof3
include trigger/PEDS/adcftof3_ped.cnf
FADC250_CRATE end
FADC250_CRATE adcftof4
include trigger/PEDS/adcftof4_ped.cnf
FADC250_CRATE end
FADC250_CRATE adcftof5
include trigger/PEDS/adcftof5_ped.cnf
FADC250_CRATE end
FADC250_CRATE adcftof6
include trigger/PEDS/adcftof6_ped.cnf
FADC250_CRATE end

FADC250_CRATE adcctof1
include trigger/PEDS/adcctof1_ped.cnf
FADC250_CRATE end


#########################
# trig1 Crate
#########################

TS_CRATE trig1

###TS_FIBER_DELAY_OFFSET 0x80 0xcf

#TS_BLOCK_LEVEL 1
#TS_BUFFER_LEVEL 1
TS_BLOCK_LEVEL 10
TS_BUFFER_LEVEL 8

#TS_HOLDOFF 1 60 1
#TS_HOLDOFF 2 60 1
#TS_HOLDOFF 3 60 1
#TS_HOLDOFF 4 60 1

TS_HOLDOFF 1 30 1
TS_HOLDOFF 2 30 1
TS_HOLDOFF 3 30 1
TS_HOLDOFF 4 30 1






#TS_INPUT_PRESCALE 1 0
#TS_INPUT_PRESCALE 2 0
#TS_INPUT_PRESCALE 3 0
#TS_INPUT_PRESCALE 4 0
#TS_INPUT_PRESCALE 5 0
#TS_INPUT_PRESCALE 6 0

##TS_INPUT_MASK 0x3F000000
TS_INPUT_MASK 0x3F000001

# first arg: 0-disable, 1-enable; second arg: prescale (15-7Hz, 7-3.5kHz, 3-60kHz)
TS_RANDOM_TRIGGER 0 3

TS_CRATE end

#########################
# trig2 Crate
#########################

### TI
TI_CRATE trig2

TI_FIBER_DELAY_OFFSET 0x80 0xcf

TI_CRATE end




### VTP
VTP_CRATE trig2vtp # stage 3

VTP_W_OFFSET 7900
VTP_W_WIDTH 400

#        slot: 10 13  9 14  8 15  7 16  6 17  5 18  4 19  3 20
#     payload:  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16
VTP_PAYLOAD_EN  0  0  0  0  1  0  1  0  1  0  1  0  1  0  1  0

#      fiber:  1  2  3  4
VTP_FIBER_EN   0  0  0  0

# 6780 corresponds to 7900 FADC latency
VTP_GT_LATENCY 6780

VTP_GT_WIDTH   16

# sector bits: trig number, ssp trig mask, ssp sector mask,        multiplicity, coincidence=#extended_clock_cycles   (or opposite)
VTP_GT_TRGBIT  8   1  1 1 1   # SECTOR 1: EC Inner Cluster | EC Outer Cluster | (EC Inner sum+EC Outer sum)
VTP_GT_TRGBIT  9   1  2 1 1   # SECTOR 2: EC Inner Cluster | EC Outer Cluster | (EC Inner sum+EC Outer sum)
VTP_GT_TRGBIT  10  1  4 1 1   # SECTOR 3: EC Inner Cluster | EC Outer Cluster | (EC Inner sum+EC Outer sum)
VTP_GT_TRGBIT  11  1  8 1 1   # SECTOR 4: EC Inner Cluster | EC Outer Cluster | (EC Inner sum+EC Outer sum)
VTP_GT_TRGBIT  12  1 16 1 1   # SECTOR 5: EC Inner Cluster | EC Outer Cluster | (EC Inner sum+EC Outer sum)
VTP_GT_TRGBIT  13  1 32 1 1   # SECTOR 6: EC Inner Cluster | EC Outer Cluster | (EC Inner sum+EC Outer sum)

#VTP_GT_TRGBIT  8  8  1 1 1   # SECTOR 1: PC sum
#VTP_GT_TRGBIT  9  8  2 1 1   # SECTOR 2: PC sum
#VTP_GT_TRGBIT  10 8  4 1 1   # SECTOR 3: PC sum
#VTP_GT_TRGBIT  11 8  8 1 1   # SECTOR 4: PC sum
#VTP_GT_TRGBIT  12 8 16 1 1   # SECTOR 5: PC sum
#VTP_GT_TRGBIT  13 8 32 1 1   # SECTOR 6: PC sum

VTP_CRATE end




### SSP
SSP_CRATE trig2 # stage 2

SSP_SLOT all

SSP_W_OFFSET 7900
SSP_W_WIDTH  400

SSP_GT_LATENCY            4000
SSP_GT_ECAL_ESUM_DELAY    0
SSP_GT_ECAL_CLUSTER_DELAY 0
SSP_GT_ECAL_ESUM_INTWIDTH 40 # integration window for total sums from ECAL_IN+ECAL_OUT
SSP_GT_PCAL_ESUM_DELAY    0
SSP_GT_PCAL_CLUSTER_DELAY 0
SSP_GT_PCAL_ESUM_INTWIDTH 40 # integration window for total sums from PCAL


# Sector Trigger bit 0 (EC inner cluster)
SSP_GT_STRG_EN                        0  1

SSP_GT_STRG_PCAL_CLUSTER_EMIN_EN      0  0
SSP_GT_STRG_PCAL_CLUSTER_EMIN         0  0
SSP_GT_STRG_PCAL_CLUSTER_WIDTH        0  0

SSP_GT_STRG_ECALOUT_CLUSTER_EMIN_EN   0  0
SSP_GT_STRG_ECALOUT_CLUSTER_EMIN      0  0
SSP_GT_STRG_ECALOUT_CLUSTER_WIDTH     0  0

SSP_GT_STRG_ECALIN_CLUSTER_EMIN_EN    0  1
SSP_GT_STRG_ECALIN_CLUSTER_EMIN       0  10 # threshold
SSP_GT_STRG_ECALIN_CLUSTER_WIDTH      0  100 # coincidence window (to coincide with other components (PCAL, OUTER etc)

SSP_GT_STRG_ECAL_ESUM_EN              0  0
SSP_GT_STRG_ECAL_ESUM_MIN             0  0
SSP_GT_STRG_ECAL_ESUM_WIDTH           0  0

SSP_GT_STRG_PCAL_ESUM_EN              0  0
SSP_GT_STRG_PCAL_ESUM_MIN             0  10
SSP_GT_STRG_PCAL_ESUM_WIDTH           0  100

# Sector Trigger bit 1 (EC outer cluster)
SSP_GT_STRG_EN                        1  0

SSP_GT_STRG_PCAL_CLUSTER_EMIN_EN      1  0
SSP_GT_STRG_PCAL_CLUSTER_EMIN         1  0
SSP_GT_STRG_PCAL_CLUSTER_WIDTH        1  0

SSP_GT_STRG_ECALOUT_CLUSTER_EMIN_EN   1  1
SSP_GT_STRG_ECALOUT_CLUSTER_EMIN      1  100
SSP_GT_STRG_ECALOUT_CLUSTER_WIDTH     1  40

SSP_GT_STRG_ECALIN_CLUSTER_EMIN_EN    1  0
SSP_GT_STRG_ECALIN_CLUSTER_EMIN       1  0
SSP_GT_STRG_ECALIN_CLUSTER_WIDTH      1  0

SSP_GT_STRG_ECAL_ESUM_EN              1  0
SSP_GT_STRG_ECAL_ESUM_MIN             1  0
SSP_GT_STRG_ECAL_ESUM_WIDTH           1  0

SSP_GT_STRG_PCAL_ESUM_EN              1  0
SSP_GT_STRG_PCAL_ESUM_MIN             1  0
SSP_GT_STRG_PCAL_ESUM_WIDTH           1  0


# Sector Trigger bit 2 (EC sum)
SSP_GT_STRG_EN                        2  0

SSP_GT_STRG_PCAL_CLUSTER_EMIN_EN      2  0
SSP_GT_STRG_PCAL_CLUSTER_EMIN         2  0
SSP_GT_STRG_PCAL_CLUSTER_WIDTH        2  0

SSP_GT_STRG_ECALOUT_CLUSTER_EMIN_EN   2  0
SSP_GT_STRG_ECALOUT_CLUSTER_EMIN      2  0
SSP_GT_STRG_ECALOUT_CLUSTER_WIDTH     2  0

SSP_GT_STRG_ECALIN_CLUSTER_EMIN_EN    2  0
SSP_GT_STRG_ECALIN_CLUSTER_EMIN       2  0
SSP_GT_STRG_ECALIN_CLUSTER_WIDTH      2  0

SSP_GT_STRG_ECAL_ESUM_EN              2  1
SSP_GT_STRG_ECAL_ESUM_MIN             2  100
SSP_GT_STRG_ECAL_ESUM_WIDTH           2  40

SSP_GT_STRG_PCAL_ESUM_EN              2  0
SSP_GT_STRG_PCAL_ESUM_MIN             2  0
SSP_GT_STRG_PCAL_ESUM_WIDTH           2  0


# Sector Trigger bit 3 (PC sum)
SSP_GT_STRG_EN                        3  0

SSP_GT_STRG_PCAL_CLUSTER_EMIN_EN      3  0
SSP_GT_STRG_PCAL_CLUSTER_EMIN         3  0
SSP_GT_STRG_PCAL_CLUSTER_WIDTH        3  0

SSP_GT_STRG_ECALOUT_CLUSTER_EMIN_EN   3  0
SSP_GT_STRG_ECALOUT_CLUSTER_EMIN      3  0
SSP_GT_STRG_ECALOUT_CLUSTER_WIDTH     3  0

SSP_GT_STRG_ECALIN_CLUSTER_EMIN_EN    3  0
SSP_GT_STRG_ECALIN_CLUSTER_EMIN       3  0
SSP_GT_STRG_ECALIN_CLUSTER_WIDTH      3  0

SSP_GT_STRG_ECAL_ESUM_EN              3  0
SSP_GT_STRG_ECAL_ESUM_MIN             3  0
SSP_GT_STRG_ECAL_ESUM_WIDTH           3  0

SSP_GT_STRG_PCAL_ESUM_EN              3  1
SSP_GT_STRG_PCAL_ESUM_MIN             3  100
SSP_GT_STRG_PCAL_ESUM_WIDTH           3  40


SSP_CRATE end



# stage 1

#########################
# adcecal1 Crate
#########################

### TI
TI_CRATE adcecal1

TI_FIBER_DELAY_OFFSET 0x80 0xcf

TI_CRATE end



### VTP
VTP_CRATE adcecal1vtp

VTP_W_OFFSET 7900
VTP_W_WIDTH 400

#        slot: 10 13  9 14  8 15  7 16  6 17  5 18  4 19  3 20
#     payload:  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16
VTP_PAYLOAD_EN  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1

#      fiber:  1  2  3  4
VTP_FIBER_EN   1  0  0  0

VTP_EC_FADCSUM_CH 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF 0xFFFF0FFF 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF 0x000000000

VTP_ECINNER_HIT_EMIN     100 # strip energy threshold to 1dim peak search
VTP_ECINNER_HIT_DT       8   # +-8clk = +-32ns strip coincidence window to form 1dim peak, and to form 2dim from 1dim
##VTP_ECINNER_HIT_DALITZ   512    672
VTP_ECINNER_HIT_DALITZ   568    584 # dalitz rule

# dalitz have to be set around 72*8

VTP_ECOUTER_HIT_EMIN     100
VTP_ECOUTER_HIT_DT       8
VTP_ECOUTER_HIT_DALITZ   512    672

VTP_CRATE end




#########################
# adcecal2 Crate
#########################

### TI
TI_CRATE adcecal2

TI_FIBER_DELAY_OFFSET 0x80 0xcf

TI_CRATE end




### VTP
VTP_CRATE adcecal2vtp

VTP_W_OFFSET 7900
VTP_W_WIDTH 400

#        slot: 10 13  9 14  8 15  7 16  6 17  5 18  4 19  3 20
#     payload:  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16
VTP_PAYLOAD_EN  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1

#      fiber:  1  2  3  4
VTP_FIBER_EN   1  0  0  0

VTP_EC_FADCSUM_CH 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF 0xFFFF0FFF 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF 0x000000000

VTP_ECINNER_HIT_EMIN     100
VTP_ECINNER_HIT_DT       8
##VTP_ECINNER_HIT_DALITZ   512    672
VTP_ECINNER_HIT_DALITZ   568    584

VTP_ECOUTER_HIT_EMIN     100
VTP_ECOUTER_HIT_DT       8
VTP_ECOUTER_HIT_DALITZ   512    672

VTP_CRATE end



#########################
# adcecal3 Crate
#########################

### TI
TI_CRATE adcecal3

TI_FIBER_DELAY_OFFSET 0x80 0xcf

TI_CRATE end




### VTP
VTP_CRATE adcecal3vtp

VTP_W_OFFSET 7900
VTP_W_WIDTH 400

#        slot: 10 13  9 14  8 15  7 16  6 17  5 18  4 19  3 20
#     payload:  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16
VTP_PAYLOAD_EN  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1

#      fiber:  1  2  3  4
VTP_FIBER_EN   1  0  0  0

VTP_EC_FADCSUM_CH 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF 0xFFFF0FFF 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF 0x000000000

VTP_ECINNER_HIT_EMIN     100
VTP_ECINNER_HIT_DT       8
##VTP_ECINNER_HIT_DALITZ   512    672
VTP_ECINNER_HIT_DALITZ   568    584

VTP_ECOUTER_HIT_EMIN     100
VTP_ECOUTER_HIT_DT       8
VTP_ECOUTER_HIT_DALITZ   512    672

VTP_CRATE end







#########################
# adcecal4 Crate
#########################

### TI
TI_CRATE adcecal4

TI_FIBER_DELAY_OFFSET 0x80 0xcf

TI_CRATE end




### VTP
VTP_CRATE adcecal4vtp

VTP_W_OFFSET 7900
VTP_W_WIDTH 400

#        slot: 10 13  9 14  8 15  7 16  6 17  5 18  4 19  3 20
#     payload:  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16
VTP_PAYLOAD_EN  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1

#      fiber:  1  2  3  4
VTP_FIBER_EN   1  0  0  0

VTP_EC_FADCSUM_CH 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF 0xFFFF0FFF 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF 0x000000000

VTP_ECINNER_HIT_EMIN     100
VTP_ECINNER_HIT_DT       8
##VTP_ECINNER_HIT_DALITZ   512    672
VTP_ECINNER_HIT_DALITZ   568    584

VTP_ECOUTER_HIT_EMIN     100
VTP_ECOUTER_HIT_DT       8
VTP_ECOUTER_HIT_DALITZ   512    672

VTP_CRATE end






#########################
# adcecal5 Crate
#########################

### TI
TI_CRATE adcecal5

TI_FIBER_DELAY_OFFSET 0x80 0xcf

TI_CRATE end




### VTP
VTP_CRATE adcecal5vtp

VTP_W_OFFSET 7900
VTP_W_WIDTH 400

#        slot: 10 13  9 14  8 15  7 16  6 17  5 18  4 19  3 20
#     payload:  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16
VTP_PAYLOAD_EN  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1

#      fiber:  1  2  3  4
VTP_FIBER_EN   1  0  0  0

VTP_EC_FADCSUM_CH 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF 0xFFFF0FFF 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF 0x000000000

VTP_ECINNER_HIT_EMIN     100
VTP_ECINNER_HIT_DT       8
##VTP_ECINNER_HIT_DALITZ   512    672
VTP_ECINNER_HIT_DALITZ   568    584

VTP_ECOUTER_HIT_EMIN     100
VTP_ECOUTER_HIT_DT       8
VTP_ECOUTER_HIT_DALITZ   512    672

VTP_CRATE end






#########################
# adcecal6 Crate
#########################

### TI
TI_CRATE adcecal6

TI_FIBER_DELAY_OFFSET 0x80 0xcf

TI_CRATE end




### VTP
VTP_CRATE adcecal6vtp

VTP_W_OFFSET 7900
VTP_W_WIDTH 400

#        slot: 10 13  9 14  8 15  7 16  6 17  5 18  4 19  3 20
#     payload:  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16
VTP_PAYLOAD_EN  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1

#      fiber:  1  2  3  4
VTP_FIBER_EN   1  0  0  0

VTP_EC_FADCSUM_CH 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF 0xFFFF0FFF 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF 0x000000000

VTP_ECINNER_HIT_EMIN     100
VTP_ECINNER_HIT_DT       8
##VTP_ECINNER_HIT_DALITZ   512    672
VTP_ECINNER_HIT_DALITZ   568    584

VTP_ECOUTER_HIT_EMIN     100
VTP_ECOUTER_HIT_DT       8
VTP_ECOUTER_HIT_DALITZ   512    672

VTP_CRATE end






























#########################
# adcpcal1 Crate
#########################

### TI
TI_CRATE adcpcal1

TI_FIBER_DELAY_OFFSET 0x80 0xcf

TI_CRATE end




### VTP
VTP_CRATE adcpcal1vtp

VTP_W_OFFSET 7900
VTP_W_WIDTH 400

#        slot: 10 13  9 14  8 15  7 16  6 17  5 18  4 19  3 20
#     payload:  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16
VTP_PAYLOAD_EN  1  1  1  1  1  1  1  1  1  0  1  0  1  0  1  0

#      fiber:  1  2  3  4
VTP_FIBER_EN   1  0  0  0

VTP_EC_FADCSUM_CH 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF 0x00000000 0x000000000

VTP_CRATE end






#########################
# adcpcal2 Crate
#########################

### TI
TI_CRATE adcpcal2

TI_FIBER_DELAY_OFFSET 0x80 0xcf

TI_CRATE end




### VTP
VTP_CRATE adcpcal2vtp

VTP_W_OFFSET 7900
VTP_W_WIDTH 400

#        slot: 10 13  9 14  8 15  7 16  6 17  5 18  4 19  3 20
#     payload:  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16
VTP_PAYLOAD_EN  1  1  1  1  1  1  1  1  1  0  1  0  1  0  1  0

#      fiber:  1  2  3  4
VTP_FIBER_EN   1  0  0  0

VTP_EC_FADCSUM_CH 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF 0x00000000 0x000000000

VTP_CRATE end













#########################
# adcpcal3 Crate
#########################

### TI
TI_CRATE adcpcal3

TI_FIBER_DELAY_OFFSET 0x80 0xcf

TI_CRATE end




### VTP
VTP_CRATE adcpcal3vtp

VTP_W_OFFSET 7900
VTP_W_WIDTH 400

#        slot: 10 13  9 14  8 15  7 16  6 17  5 18  4 19  3 20
#     payload:  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16
VTP_PAYLOAD_EN  1  1  1  1  1  1  1  1  1  0  1  0  1  0  1  0

#      fiber:  1  2  3  4
VTP_FIBER_EN   1  0  0  0

VTP_EC_FADCSUM_CH 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF 0x00000000 0x000000000

VTP_CRATE end
























#########################
# adcpcal4 Crate
#########################

### TI
TI_CRATE adcpcal4

TI_FIBER_DELAY_OFFSET 0x80 0xcf

TI_CRATE end




### VTP
VTP_CRATE adcpcal4vtp

VTP_W_OFFSET 7900
VTP_W_WIDTH 400

#        slot: 10 13  9 14  8 15  7 16  6 17  5 18  4 19  3 20
#     payload:  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16
VTP_PAYLOAD_EN  1  1  1  1  1  1  1  1  1  0  1  0  1  0  1  0

#      fiber:  1  2  3  4
VTP_FIBER_EN   1  0  0  0

VTP_EC_FADCSUM_CH 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF 0x00000000 0x000000000

VTP_CRATE end










#########################
# adcpcal5 Crate
#########################

### TI
TI_CRATE adcpcal5

TI_FIBER_DELAY_OFFSET 0x80 0xcf

TI_CRATE end




### VTP
VTP_CRATE adcpcal5vtp

VTP_W_OFFSET 7900
VTP_W_WIDTH 400

#        slot: 10 13  9 14  8 15  7 16  6 17  5 18  4 19  3 20
#     payload:  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16
VTP_PAYLOAD_EN  1  1  1  1  1  1  1  1  1  0  1  0  1  0  1  0

#      fiber:  1  2  3  4
VTP_FIBER_EN   1  0  0  0

VTP_EC_FADCSUM_CH 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF 0x00000000 0x000000000

VTP_CRATE end
















#########################
# adcpcal6 Crate
#########################

### TI
TI_CRATE adcpcal6

TI_FIBER_DELAY_OFFSET 0x80 0xcf

TI_CRATE end




### VTP
VTP_CRATE adcpcal6vtp

VTP_W_OFFSET 7900
VTP_W_WIDTH 400

#        slot: 10 13  9 14  8 15  7 16  6 17  5 18  4 19  3 20
#     payload:  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16
VTP_PAYLOAD_EN  1  1  1  1  1  1  1  1  1  0  1  0  1  0  1  0

#      fiber:  1  2  3  4
VTP_FIBER_EN   1  0  0  0

VTP_EC_FADCSUM_CH 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF 0x00000000 0x000000000

VTP_CRATE end


FADC250_CRATE all

FADC250_SLOT all

FADC250_DAC  3300

FADC250_W_OFFSET  7900
FADC250_W_WIDTH   400

# extra shift for CTOF
FADC250_CRATE adcctof1
FADC250_SLOT 3
FADC250_W_OFFSET  7980
FADC250_SLOT 4
FADC250_W_OFFSET  7980
FADC250_SLOT 5
FADC250_W_OFFSET  7980
FADC250_SLOT 6
FADC250_W_OFFSET  7980
FADC250_SLOT 7
FADC250_W_OFFSET  7980
FADC250_SLOT 8
FADC250_W_OFFSET  7980
FADC250_CRATE end

FADC250_CRATE end
