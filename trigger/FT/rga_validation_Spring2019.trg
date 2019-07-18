#########################################
# CLAS12 daq/trigger default config file #
##########################################

##############################
# TI settings (TI master only)
##############################

###################################
# FADC settings (detector-related)
###################################

# Common settings

FADC250_CRATE all
FADC250_SLOT	   all

# compression: 0-no compression, 1-compression, 2-both (verify mode)
FADC250_COMPRESSION  1

FADC250_MODE         1
##FADC250_W_OFFSET  7900
FADC250_W_OFFSET  7650
FADC250_W_WIDTH	   384
FADC250_CRATE end

TDC1190_CRATE all
TDC1190_SLOT all
TDC1190_W_WIDTH   800 
TDC1190_W_OFFSET -8450
TDC1190_CRATE end

TDC1190_CRATE tdcctof1
TDC1190_SLOT all
TDC1190_W_WIDTH   800 
TDC1190_W_OFFSET -8250
TDC1190_CRATE end

TDC1190_CRATE adccnd1
TDC1190_SLOT all
TDC1190_W_WIDTH   800 
TDC1190_W_OFFSET -8200
TDC1190_CRATE end



VSCM_CRATE all
VSCM_SLOT all
##VSCM_TRIG_WINDOW     96      1064        16 
##VSCM_TRIG_WINDOW     96      1032        16 
##VSCM_TRIG_WINDOW     96      968        16 
##VSCM_TRIG_WINDOW     80      976        16 
#VSCM_TRIG_WINDOW     80      980        16
#VSCM_TRIG_WINDOW     80      978        16
#VSCM_TRIG_WINDOW     80      979        16
VSCM_TRIG_WINDOW     64      979        16
VSCM_CRATE end

DCRB_CRATE all
DCRB_SLOT all
##DCRB_W_OFFSET  7900
DCRB_W_OFFSET  7650
DCRB_CRATE end



#does not work yet !!!!!!!
#SSP_CRATE       rich4
#SSP_SLOT        all
#SSP_RICH_W_WIDTH    300
#SSP_RICH_W_OFFSET  7980
#SSP_CRATE end



#######################################################
#
#######################################################

# ECAL settings
#include trigger/EC/ecal_default.cnf
include trigger/EC/ecal_newgain_prod.cnf

# PCAL settings
#include trigger/EC/pcal_default.cnf
include trigger/EC/pcal_newgain_prod.cnf

# FTOF settings
include trigger/FTOF/ftof_default.cnf

# LTCC settings
include trigger/LTCC/ltcc_default.cnf

# CTOF/HTCC settings
include trigger/CTOF_HTCC/ctof_htcc_prod.cnf

# CND settings
include trigger/CND/cnd_prod.cnf

#FT CAL AND HODO
include trigger/FT/ft_default.cnf

#SVT
include trigger/SVT/svt_prod.trg

#BAND
include trigger/BAND/band_default_prod.cnf

#######################################
# Trigger stage 1 (crates with FADCs) #
#######################################

# ECAL
VTP_CRATE adcecal1vtp
  include trigger/VTP/ecalvtp_low_thres.cnf
VTP_CRATE end

VTP_CRATE adcecal2vtp
  include trigger/VTP/ecalvtp_low_thres.cnf
VTP_CRATE end

VTP_CRATE adcecal3vtp
  include trigger/VTP/ecalvtp_low_thres.cnf
VTP_CRATE end

VTP_CRATE adcecal4vtp
  include trigger/VTP/ecalvtp_low_thres.cnf
VTP_CRATE end

VTP_CRATE adcecal5vtp
  include trigger/VTP/ecalvtp_low_thres.cnf
VTP_CRATE end

VTP_CRATE adcecal6vtp
  include trigger/VTP/ecalvtp_low_thres.cnf
VTP_CRATE end

# PCAL
VTP_CRATE adcpcal1vtp
  include trigger/VTP/pcalvtp_low_thres.cnf
  include trigger/VTP/pcuvtp_default.cnf
VTP_CRATE end

VTP_CRATE adcpcal2vtp
  include trigger/VTP/pcalvtp_low_thres.cnf
  include trigger/VTP/pcuvtp_default.cnf
VTP_CRATE end

VTP_CRATE adcpcal3vtp
  include trigger/VTP/pcalvtp_low_thres.cnf
  include trigger/VTP/pcuvtp_default.cnf
VTP_CRATE end

VTP_CRATE adcpcal4vtp
  include trigger/VTP/pcalvtp_low_thres.cnf
  include trigger/VTP/pcuvtp_default.cnf
VTP_CRATE end

VTP_CRATE adcpcal5vtp
  include trigger/VTP/pcalvtp_low_thres.cnf
  include trigger/VTP/pcuvtp_default.cnf
VTP_CRATE end

VTP_CRATE adcpcal6vtp
  include trigger/VTP/pcalvtp_low_thres.cnf
  include trigger/VTP/pcuvtp_default.cnf
VTP_CRATE end
#
# HTCC
#
VTP_CRATE adcctof1vtp
  include trigger/VTP/htcc_prod_2phe.cnf
VTP_CRATE end

#FT (3 VTPs inside the file)
include trigger/VTP/ftvtp_prod.cnf

# FTOF
VTP_CRATE adcftof1vtp
  include trigger/VTP/ftofvtp_prod.cnf
VTP_CRATE end
VTP_CRATE adcftof2vtp
  include trigger/VTP/ftofvtp_prod.cnf
VTP_CRATE end
VTP_CRATE adcftof3vtp
  include trigger/VTP/ftofvtp_prod.cnf
VTP_CRATE end
VTP_CRATE adcftof4vtp
  include trigger/VTP/ftofvtp_prod.cnf
VTP_CRATE end
VTP_CRATE adcftof5vtp
  include trigger/VTP/ftofvtp_prod.cnf
VTP_CRATE end
VTP_CRATE adcftof6vtp
  include trigger/VTP/ftofvtp_prod.cnf
VTP_CRATE end

# CTOF
VTP_CRATE adcctof1vtp
  include trigger/VTP/ctofvtp_prod.cnf
VTP_CRATE end

# CND
VTP_CRATE adccnd1vtp
  include trigger/VTP/cndvtp_prod.cnf
VTP_CRATE end


#################################
# Trigger stage 2 (crate trig2) #
#################################

SSP_CRATE trig2
SSP_SLOT all

SSP_W_OFFSET 7650
SSP_W_WIDTH  400

# 'SSP_GT_' - sectors trigger logic

SSP_GT_LATENCY            5000

#SSP_GT_HTCC_DELAY           1164
SSP_GT_HTCC_DELAY           1132
SSP_GT_ECAL_CLUSTER_DELAY   1024
SSP_GT_PCAL_CLUSTER_DELAY   1024
SSP_GT_FTOF_DELAY           1104
SSP_GT_PCAL_PCU_DELAY       1068


# if use this, add 1024 to all above and SSP_GTC_FT_CLUSTER_DELAY below,
# subtract same from VTP_GT_LATENCY and VTP_W_OFFSET
SSP_GT_DC_SEG_DELAY         0

# ECAL+PCAL cluster sum coincidence width
SSP_GT_ECPC_WIDTH           96

# DCxPCAL matching: cluster coincidence width and minimum energy
SSP_GT_DCPCAL_PCAL_WIDTH    96
SSP_GT_DCPCAL_PCAL_EMIN    600

#pcu
SSP_GT_FTOFPCU_FTOF_WIDTH    32
SSP_GT_FTOFPCU_PCU_WIDTH     32
SSP_GT_FTOFPCU_MATCH_TABLE    0		# 0 is the old map, 1 is the new map Andrea provided after the last run


# 'SSP_GT_STRG_' - sector trigger bits - logic inside single sector

#################
#                      
# Sector Trigger bit 0 FTOFxPCU
#   
#################
SSP_GT_STRG                           0
SSP_GT_STRG_EN                        1

# PCU trigger logic
SSP_GT_STRG_FTOFPCU_EN                1
SSP_GT_STRG_FTOFPCU_WIDTH            64
SSP_GT_STRG_FTOFPCU_MATCH_MASK        8

# SSP_GT_STRG_FTOFPCU_MATCH_MASK   N
# N: 1 = +/-0 FTOF strip tolerance
#    2 = +/-1 FTOF strip tolerance
#    4 = +/-2 FTOF strip tolerance
#    8 = +/-3 FTOF strip tolerance
#   16 = +/-4 FTOF strip tolerance
#   32 = +/-5 FTOF strip tolerance


#################
#              
# Sector Trigger bit 1 FTOFxPCU & PCAL>10 MeV
# 
#
# 
#################
SSP_GT_STRG                           1
SSP_GT_STRG_EN                        1

# PCU trigger logic
SSP_GT_STRG_FTOFPCU_EN                1
SSP_GT_STRG_FTOFPCU_WIDTH             64
SSP_GT_STRG_FTOFPCU_MATCH_MASK        8

# SSP_GT_STRG_FTOFPCU_MATCH_MASK   N
# N: 1 = +/-0 FTOF strip tolerance
#    2 = +/-1 FTOF strip tolerance
#    4 = +/-2 FTOF strip tolerance
#    8 = +/-3 FTOF strip tolerance
#   16 = +/-4 FTOF strip tolerance
#   32 = +/-5 FTOF strip tolerance

# PCAL cluster trigger logic
SSP_GT_STRG_PCAL_CLUSTER_EMIN_EN      1
SSP_GT_STRG_PCAL_CLUSTER_EMIN       100
SSP_GT_STRG_PCAL_CLUSTER_WIDTH       96

#################
#                
#
# Sector Trigger bit 2 FTOFxPCU & PCAL>10 MeV & DCsecgments(5outof6)
#
# 
#################
SSP_GT_STRG                           2
SSP_GT_STRG_EN                        1

# PCU trigger logic
SSP_GT_STRG_FTOFPCU_EN                1
SSP_GT_STRG_FTOFPCU_WIDTH             64
SSP_GT_STRG_FTOFPCU_MATCH_MASK        8

# SSP_GT_STRG_FTOFPCU_MATCH_MASK   N
# N: 1 = +/-0 FTOF strip tolerance
#    2 = +/-1 FTOF strip tolerance
#    4 = +/-2 FTOF strip tolerance
#    8 = +/-3 FTOF strip tolerance
#   16 = +/-4 FTOF strip tolerance
#   32 = +/-5 FTOF strip tolerance

# PCAL cluster trigger logic
SSP_GT_STRG_PCAL_CLUSTER_EMIN_EN      1
SSP_GT_STRG_PCAL_CLUSTER_EMIN       100
SSP_GT_STRG_PCAL_CLUSTER_WIDTH       96

# DC
SSP_GT_STRG_DC_EN                     1
SSP_GT_STRG_DC_ROAD_REQUIRED          0
SSP_GT_STRG_DC_ROAD_INBEND_REQUIRED   0
SSP_GT_STRG_DC_ROAD_OUTBEND_REQUIRED  0
SSP_GT_STRG_DC_MULT_MIN               5
SSP_GT_STRG_DC_WIDTH                 32


#################
#                
#
# Sector Trigger bit 3 FTOFxPCU & PCAL>10 MeV & DCsecgments(5outof6)&DC-roads
#
# 
#################
SSP_GT_STRG                           3
SSP_GT_STRG_EN                        1

# PCU trigger logic
SSP_GT_STRG_FTOFPCU_EN                1
SSP_GT_STRG_FTOFPCU_WIDTH             64
SSP_GT_STRG_FTOFPCU_MATCH_MASK        8

# SSP_GT_STRG_FTOFPCU_MATCH_MASK   N
# N: 1 = +/-0 FTOF strip tolerance
#    2 = +/-1 FTOF strip tolerance
#    4 = +/-2 FTOF strip tolerance
#    8 = +/-3 FTOF strip tolerance
#   16 = +/-4 FTOF strip tolerance
#   32 = +/-5 FTOF strip tolerance

# PCAL cluster trigger logic
SSP_GT_STRG_PCAL_CLUSTER_EMIN_EN      1
SSP_GT_STRG_PCAL_CLUSTER_EMIN       100
SSP_GT_STRG_PCAL_CLUSTER_WIDTH       96

# DC
SSP_GT_STRG_DC_EN                     1
SSP_GT_STRG_DC_ROAD_REQUIRED          1
SSP_GT_STRG_DC_ROAD_INBEND_REQUIRED   0
SSP_GT_STRG_DC_ROAD_OUTBEND_REQUIRED  0
SSP_GT_STRG_DC_MULT_MIN               5
SSP_GT_STRG_DC_WIDTH                 32






#################
#                      Hadron Trigger
#
# Sector Trigger bit 4 STRG4: DC x FTOFPCU=+/-3 x PCAL=(10)MeV
#
# 
#################
SSP_GT_STRG                           4
SSP_GT_STRG_EN                        1

# PCU trigger logic
SSP_GT_STRG_FTOFPCU_EN                1
SSP_GT_STRG_FTOFPCU_WIDTH            64
SSP_GT_STRG_FTOFPCU_MATCH_MASK        8

# SSP_GT_STRG_FTOFPCU_MATCH_MASK   N
# N: 1 = +/-0 FTOF strip tolerance
#    2 = +/-1 FTOF strip tolerance
#    4 = +/-2 FTOF strip tolerance
#    8 = +/-3 FTOF strip tolerance
#   16 = +/-4 FTOF strip tolerance
#   32 = +/-5 FTOF strip tolerance

# PCAL cluster trigger logic: EMIN in 0.1 MeV units
SSP_GT_STRG_PCAL_CLUSTER_EMIN_EN      1
SSP_GT_STRG_PCAL_CLUSTER_EMIN       100
SSP_GT_STRG_PCAL_CLUSTER_WIDTH       96

# DC
SSP_GT_STRG_DC_EN                     1
SSP_GT_STRG_DC_ROAD_REQUIRED          0
SSP_GT_STRG_DC_ROAD_INBEND_REQUIRED   0
SSP_GT_STRG_DC_ROAD_OUTBEND_REQUIRED  0
SSP_GT_STRG_DC_MULT_MIN               5
SSP_GT_STRG_DC_WIDTH                 32


#################
#                +MUON TRIGGER
#
# Sector Trigger bit 5 STRG5: DCROAD+ x FTOFPCU=+/-3 x PCAL=(>10)MeV x ECAL=(>40)MeV
#
# 
#################
SSP_GT_STRG                           5
SSP_GT_STRG_EN                        1

# PCU trigger logic
SSP_GT_STRG_FTOFPCU_EN                1
SSP_GT_STRG_FTOFPCU_WIDTH             0
SSP_GT_STRG_FTOFPCU_MATCH_MASK        8

# SSP_GT_STRG_FTOFPCU_MATCH_MASK   N
# N: 1 = +/-0 FTOF strip tolerance
#    2 = +/-1 FTOF strip tolerance
#    4 = +/-2 FTOF strip tolerance
#    8 = +/-3 FTOF strip tolerance
#   16 = +/-4 FTOF strip tolerance
#   32 = +/-5 FTOF strip tolerance

# PCAL cluster trigger logic: EMIN in 0.1 MeV units
SSP_GT_STRG_PCAL_CLUSTER_EMIN_EN          1
SSP_GT_STRG_PCAL_CLUSTER_EMIN           100
SSP_GT_STRG_PCAL_CLUSTER_WIDTH           96

# ECAL cluster trigger logic: EMIN in 0.1MeV units
SSP_GT_STRG_ECAL_CLUSTER_EMIN_EN          1
SSP_GT_STRG_ECAL_CLUSTER_EMIN           400
SSP_GT_STRG_ECAL_CLUSTER_WIDTH           96

# DC
SSP_GT_STRG_DC_EN                     1
SSP_GT_STRG_DC_ROAD_REQUIRED          0
SSP_GT_STRG_DC_ROAD_INBEND_REQUIRED   0
SSP_GT_STRG_DC_ROAD_OUTBEND_REQUIRED  1
SSP_GT_STRG_DC_MULT_MIN               5
SSP_GT_STRG_DC_WIDTH                 32

#################
#                -MUON TRIGGER
#
# Sector Trigger bit 6 STRG6: DCROAD- x FTOFPCU=+/-3 x PCAL=(>10)MeV x ECAL=(>40)MeV
#
# 
#################
SSP_GT_STRG                           6
SSP_GT_STRG_EN                        1

# PCU trigger logic
SSP_GT_STRG_FTOFPCU_EN                1
SSP_GT_STRG_FTOFPCU_WIDTH             0
SSP_GT_STRG_FTOFPCU_MATCH_MASK        8

# SSP_GT_STRG_FTOFPCU_MATCH_MASK   N
# N: 1 = +/-0 FTOF strip tolerance
#    2 = +/-1 FTOF strip tolerance
#    4 = +/-2 FTOF strip tolerance
#    8 = +/-3 FTOF strip tolerance
#   16 = +/-4 FTOF strip tolerance
#   32 = +/-5 FTOF strip tolerance

# PCAL cluster trigger logic: EMIN in 0.1 MeV units
SSP_GT_STRG_PCAL_CLUSTER_EMIN_EN          1
SSP_GT_STRG_PCAL_CLUSTER_EMIN           100
SSP_GT_STRG_PCAL_CLUSTER_WIDTH           96

# ECAL cluster trigger logic: EMIN in 0.1MeV units
SSP_GT_STRG_ECAL_CLUSTER_EMIN_EN          1
SSP_GT_STRG_ECAL_CLUSTER_EMIN           400
SSP_GT_STRG_ECAL_CLUSTER_WIDTH           96

# DC
SSP_GT_STRG_DC_EN                     1
SSP_GT_STRG_DC_ROAD_REQUIRED          0
SSP_GT_STRG_DC_ROAD_INBEND_REQUIRED   1
SSP_GT_STRG_DC_ROAD_OUTBEND_REQUIRED  0
SSP_GT_STRG_DC_MULT_MIN               5
SSP_GT_STRG_DC_WIDTH                 32

#################
#
# Sector Trigger bit 7 STRG7: FTOFxPCALU
#
#################
SSP_GT_STRG                           7
SSP_GT_STRG_EN                        1

# PCU trigger logic
SSP_GT_STRG_FTOFPCU_EN                1
SSP_GT_STRG_FTOFPCU_WIDTH             0
SSP_GT_STRG_FTOFPCU_MATCH_MASK        1

# SSP_GT_STRG_FTOFPCU_MATCH_MASK   N
# N: 1 = +/-0 FTOF strip tolerance
#    2 = +/-1 FTOF strip tolerance
#    4 = +/-2 FTOF strip tolerance
#    8 = +/-3 FTOF strip tolerance
#   16 = +/-4 FTOF strip tolerance
#   32 = +/-5 FTOF strip tolerance


#######################################
#
# 'SSP_GTC_' - central detectors logic
#
#######################################

SSP_GTC_LATENCY           5000

SSP_GTC_FT_ESUM_DELAY     0
SSP_GTC_FT_CLUSTER_DELAY  1180
SSP_GTC_FT_ESUM_INTWIDTH  0
SSP_GTC_CTOF_DELAY        1236
SSP_GTC_CND_DELAY         1244

###################################################
# 'SSP_GTC_CTRG_' - central detectors trigger bits
###################################################

########################
# Central Trigger bit 0    CTRG0:  FT(200-4000)xHD(2)
########################
SSP_GTC_CTRG                       0

SSP_GTC_CTRG_EN                    1
SSP_GTC_CTRG_FT_CLUSTER_EN         1
SSP_GTC_CTRG_FT_CLUSTER_EMIN       200
SSP_GTC_CTRG_FT_CLUSTER_EMAX       4000
SSP_GTC_CTRG_FT_CLUSTER_HODO_NMIN  2
SSP_GTC_CTRG_FT_CLUSTER_NMIN       1
SSP_GTC_CTRG_FT_CLUSTER_WIDTH      0
SSP_GTC_CTRG_FT_ESUM_EN            0
SSP_GTC_CTRG_FT_ESUM_EMIN          0
SSP_GTC_CTRG_FT_ESUM_WIDTH         0


########################
# Central Trigger bit 1    CTRG1:  FT(200-4000)xHD(2) x CTOF 
########################
SSP_GTC_CTRG                       1
SSP_GTC_CTRG_EN                    1

SSP_GTC_CTRG_EN                    1
SSP_GTC_CTRG_FT_CLUSTER_EN         1
SSP_GTC_CTRG_FT_CLUSTER_EMIN       200
SSP_GTC_CTRG_FT_CLUSTER_EMAX       4000
SSP_GTC_CTRG_FT_CLUSTER_HODO_NMIN  2
SSP_GTC_CTRG_FT_CLUSTER_NMIN       1
SSP_GTC_CTRG_FT_CLUSTER_WIDTH      0
SSP_GTC_CTRG_FT_ESUM_EN            0
SSP_GTC_CTRG_FT_ESUM_EMIN          0
SSP_GTC_CTRG_FT_ESUM_WIDTH         0

SSP_GTC_CTRG_CTOF_EN               1
SSP_GTC_CTRG_CTOF_WIDTH            64

########################
# Central Trigger bit 2    CTRG2:  CTOF 
########################
SSP_GTC_CTRG                       2
SSP_GTC_CTRG_EN                    1

SSP_GTC_CTRG_CTOF_EN               1
SSP_GTC_CTRG_CTOF_WIDTH            64

########################
# Central Trigger bit 3    CTRG3:  CTOF x CND
########################
SSP_GTC_CTRG                       3
SSP_GTC_CTRG_EN                    1

SSP_GTC_CTRG_CTOF_EN               1
SSP_GTC_CTRG_CTOF_WIDTH            64

SSP_GTC_CTRG_CND_EN		   1
SSP_GTC_CTRG_CND_WIDTH		   64

#CNDxCTOF
SSP_GTC_CTRG_CNDCTOF_EN		   1
SSP_GTC_CTRG_CNDCTOF_WIDTH	   64
SSP_GTC_CTRG_CNDCTOF_MATCH_MASK	   2


SSP_CRATE end






########################################
# Trigger stage 3 (vtp in trig2 crate) #
########################################

VTP_CRATE trig2vtp

##VTP_W_OFFSET 7900
#VTP_W_OFFSET 7650
VTP_W_OFFSET 6624
VTP_W_WIDTH   400

#        slot: 10 13  9 14  8 15  7 16  6 17  5 18  4 19  3 20
#     payload:  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16
VTP_PAYLOAD_EN  0  0  1  0  1  0  1  0  1  0  1  0  1  0  1  0


# global latency
##VTP_GT_LATENCY 6450
VTP_GT_LATENCY 5420


VTP_GT_WIDTH   16

# TRIGGER BITS: 
#               trig number 
#               |
#               |   ssp trig mask 0       ###############
#               |   |   ssp sector mask 0 # Condition 0 #
#               |   |   |  multiplicity 0 ###############
#               |   |   |  |
#               |   |   |  |    ssp trig mask 1      #######################################################
#               |   |   |  |    |  ssp sector mask 1 # Condition 1 - used for VTP_GT_TRG2 definition types #
#               |   |   |  |    |  |  multiplicity 1 #######################################################
#               |   |   |  |    |  |  |
#               |   |   |  |    |  |  |    coincidence=#extended_clock_cycles 
#               |   |   |  |    |  |  |    |  ssp central trig mask
#               |   |   |  |    |  |  |    |  |  delay(in 4ns ticks)
#               |   |   |  |    |  |  |    |  |  |  prescaler (0=disable, 1-65535=divider)
#               |   |   |  |    |  |  |    |  |  |  |

################################
# Physics Triggers
################################
# Electron, All Sectors with DCROADxPCALU
VTP_GT_TRGBIT   0   8  63  1                1  0  0    0  # SSP STRG3, SECTOR 1-6

# FTOFxPCU
VTP_GT_TRGBIT   1   1   1  1                1  0  0    0  #  STRG0, SECTOR 1
VTP_GT_TRGBIT   2   1   2  1                1  0  0    0  #  STRG0, SECTOR 2
VTP_GT_TRGBIT   3   1   4  1                1  0  0    0  #  STRG0, SECTOR 3
VTP_GT_TRGBIT   4   1   8  1                1  0  0    0  #  STRG0, SECTOR 4
VTP_GT_TRGBIT   5   1  16  1                1  0  0    0  #  STRG0, SECTOR 5
VTP_GT_TRGBIT   6   1  32  1                1  0  0    0  #  STRG0, SECTOR 6

# FTOFxPCU & PCAL>10 MeV
VTP_GT_TRGBIT   7   2   1  1		    1  0  0    0  #  STRG1 SECTOR 1 
VTP_GT_TRGBIT   8   2   2  1      	    1  0  0    0  #  STRG1 SECTOR 2 
VTP_GT_TRGBIT   9   2   4  1       	    1  0  0    0  #  STRG1 SECTOR 3 
VTP_GT_TRGBIT  10   2   8  1       	    1  0  0    0  #  STRG1 SECTOR 4 
VTP_GT_TRGBIT  11   2  16  1        	    1  0  0    0  #  STRG1 SECTOR 5 
VTP_GT_TRGBIT  12   2  32  1       	    1  0  0    0  #  STRG1 SECTOR 6

# FTOFxPCU & PCAL>10 MeV & DC-segments (5 out of 6)
VTP_GT_TRGBIT  13   4   1  1		    1  0  0    0  #  STRG2 SECTOR 1 
VTP_GT_TRGBIT  14   4   2  1      	    1  0  0    0  #  STRG2 SECTOR 2 
VTP_GT_TRGBIT  15   4   4  1       	    1  0  0    0  #  STRG2 SECTOR 3 
VTP_GT_TRGBIT  16   4   8  1       	    1  0  0    0  #  STRG2 SECTOR 4 
VTP_GT_TRGBIT  17   4  16  1        	    1  0  0    0  #  STRG2 SECTOR 5 
VTP_GT_TRGBIT  18   4  32  1       	    1  0  0    0  #  STRG2 SECTOR 6

# FTOFxPCU & PCAL>10 MeV & DC-roads  
VTP_GT_TRGBIT  19   8   1  1		    1  0  0    0  #  STRG3 SECTOR 1 
VTP_GT_TRGBIT  20   8   2  1      	    1  0  0    0  #  STRG3 SECTOR 2 
VTP_GT_TRGBIT  21   8   4  1       	    1  0  0    0  #  STRG3 SECTOR 3 
VTP_GT_TRGBIT  22   8   8  1       	    1  0  0    0  #  STRG3 SECTOR 4 
VTP_GT_TRGBIT  23   8  16  1        	    1  0  0    0  #  STRG3 SECTOR 5 
VTP_GT_TRGBIT  24   8  32  1       	    1  0  0    0  #  STRG3 SECTOR 6



# FT(200-4000)MeV x DC x FTOFPCU x PCAL>10MeV (2 Sectors)
VTP_GT_TRGBIT  25   4  63  2                1  1  0     0  # STRG2, MULT.2 and CTRG0

# FT(300 - 8500) MeV x DC x FTOFPCU x PCAL>10MeV x CTOF
VTP_GT_TRGBIT  26   4  63  1               1  2  0     0  # STRG2, MULT.1 and CTRG1

#CENTRAL CTOF
VTP_GT_TRGBIT  27   0  63  1                1  4  0    0  # CTRG2

#CENTRAL CND*CTOF
VTP_GT_TRGBIT  28   0  63  1                1  8  0    0  # CTRG3




# FT(200 - 4000) w hodoscope               --> THIS IS THE ONLY TRG SOURCE
VTP_GT_TRGBIT  31   0  63  1                1  1  0     9  #  CTRG0


 
VTP_CRATE end

############################
# TS settings (trig1 crate)
############################

TS_CRATE trig1

#lock-roc mode
#TS_BLOCK_LEVEL   1
#TS_BUFFER_LEVEL  1

#NOTE: prescales and masks for GTP are set above in VTP_GT_TRGBIT lines
#Don't use the following anymore
#TS_GTP_INPUT_MASK 0x807FFFFF
#TS_GTP_PRESCALE  1   0    #   TriggerBit   0

# production: 5 5 15 10
TS_BLOCK_LEVEL   40
TS_BUFFER_LEVEL   8
TS_HOLDOFF   1  5 1
TS_HOLDOFF   2  5 1
TS_HOLDOFF   3 15 1
TS_HOLDOFF   4 10 1

#
# TS FP trigger mask
#
# 0x80  - FARADAY
# 0x100 - SVT or BAND
# 0x200 - CTOF
# 0x400 - CND
# 0x800 - MVT
# 0x1000 - helicity

#  Helicity, Faraday cup, BAND calibration 
#TS_FP_INPUT_MASK 0x00001080
TS_FP_INPUT_MASK 0x00001180

### BAND prescale
TS_FP_PRESCALE  9 5

### Faraday cup prescale
TS_FP_PRESCALE  8 5


# First arg:      0-disable, 
#                 1-enable; 
#                 |   Prescale (15-7Hz, 7-3.5kHz, 5-15kHz, 4-30kHz, 3-60kHz)
#                 |   |
TS_RANDOM_TRIGGER 0   5

TS_CRATE end

