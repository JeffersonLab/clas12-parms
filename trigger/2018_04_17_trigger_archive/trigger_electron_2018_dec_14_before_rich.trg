##########################################
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
FADC250_MODE         1
FADC250_NSB         12
FADC250_NSA        156
FADC250_NPEAK        1
FADC250_DAC       3300
FADC250_TET         20
FADC250_W_OFFSET  7900
FADC250_W_WIDTH	   400
FADC250_CRATE end

# ECAL settings
#include trigger/EC/ecal_default.cnf
include trigger/EC/ecal_newgain_prod.cnf

# PCAL settings
#include trigger/EC/pcal_default.cnf
include trigger/EC/pcal_newgain_prod.cnf

# FTOF settings
include trigger/FTOF/ftof_default.cnf

# CTOF/HTCC settings
include trigger/CTOF_HTCC/ctof_htcc_newgain_prod.cnf

# CND settings
include trigger/CND/cnd_prod.cnf

#FT CAL AND HODO
include trigger/FT/ft_default.cnf

#######################################
# Trigger stage 1 (crates with FADCs) #
#######################################

# ECAL
VTP_CRATE adcecal1vtp
  include trigger/VTP/ecalvtp_prod.cnf
VTP_CRATE end

VTP_CRATE adcecal2vtp
  include trigger/VTP/ecalvtp_prod.cnf
VTP_CRATE end

VTP_CRATE adcecal3vtp
  include trigger/VTP/ecalvtp_prod.cnf
VTP_CRATE end

VTP_CRATE adcecal4vtp
  include trigger/VTP/ecalvtp_prod.cnf
VTP_CRATE end

VTP_CRATE adcecal5vtp
  include trigger/VTP/ecalvtp_prod.cnf
VTP_CRATE end

VTP_CRATE adcecal6vtp
  include trigger/VTP/ecalvtp_prod.cnf
VTP_CRATE end

# PCAL
VTP_CRATE adcpcal1vtp
  include trigger/VTP/pcalvtp_prod.cnf
VTP_CRATE end

VTP_CRATE adcpcal2vtp
  include trigger/VTP/pcalvtp_prod.cnf
VTP_CRATE end

VTP_CRATE adcpcal3vtp
  include trigger/VTP/pcalvtp_prod.cnf
VTP_CRATE end

VTP_CRATE adcpcal4vtp
  include trigger/VTP/pcalvtp_prod.cnf
VTP_CRATE end

VTP_CRATE adcpcal5vtp
  include trigger/VTP/pcalvtp_prod.cnf
VTP_CRATE end

VTP_CRATE adcpcal6vtp
  include trigger/VTP/pcalvtp_prod.cnf
VTP_CRATE end

# HTCC
VTP_CRATE adcctof1vtp
  include trigger/VTP/htccvtp_prod.cnf
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


#################################
# Trigger stage 2 (crate trig2) #
#################################

SSP_CRATE trig2
SSP_SLOT all

SSP_W_OFFSET 7900
SSP_W_WIDTH  400

# 'SSP_GT_' - sectors trigger logic

SSP_GT_LATENCY            5000

SSP_GT_ECAL_ESUM_DELAY    0
SSP_GT_ECAL_CLUSTER_DELAY 0
SSP_GT_ECAL_ESUM_INTWIDTH 40 # integration window for total sums from ECAL_IN+ECAL_OUT

SSP_GT_ECAL_COSMIC_DELAY  0

SSP_GT_PCAL_CLUSTER_DELAY 0

#SSP_GT_HTCC_DELAY         0
#vpk
SSP_GT_HTCC_DELAY         156

SSP_GT_FTOF_DELAY         90

# 'SSP_GT_STRG_' - sector trigger bits - logic inside single sector

########################
#
# Sector Trigger bit 0 
#
#       HTCC  
########################
SSP_GT_STRG                           0
SSP_GT_STRG_EN                        1

# HTCC trigger logic
SSP_GT_STRG_HTCC_EN                   1
SSP_SLOT 3      # sector 1 SSP
SSP_GT_STRG_HTCC_MASK                 0x0000000000FF
SSP_SLOT 4      # sector 2 SSP
SSP_GT_STRG_HTCC_MASK                 0x00000000FF00
SSP_SLOT 5      # sector 3 SSP
SSP_GT_STRG_HTCC_MASK                 0x000000FF0000
SSP_SLOT 6      # sector 4 SSP
SSP_GT_STRG_HTCC_MASK                 0x0000FF000000
SSP_SLOT 7      # sector 5 SSP
SSP_GT_STRG_HTCC_MASK                 0x00FF00000000
SSP_SLOT 8      # sector 6 SSP
SSP_GT_STRG_HTCC_MASK                 0xFF0000000000
SSP_SLOT all
SSP_GT_STRG_HTCC_WIDTH                0


########################
#
# Sector Trigger bit 1 
#
#         PCAL
########################
SSP_GT_STRG                           1
SSP_GT_STRG_EN                        1

# PCAL cluster trigger logic
SSP_GT_STRG_PCAL_CLUSTER_EMIN_EN      1
SSP_GT_STRG_PCAL_CLUSTER_EMIN      1000
SSP_GT_STRG_PCAL_CLUSTER_WIDTH       96


########################
#
# Sector Trigger bit 2 
#
#         ECAL
########################
SSP_GT_STRG                           2
SSP_GT_STRG_EN                        1

# ECAL cluster trigger logic
SSP_GT_STRG_ECAL_CLUSTER_EMIN_EN      1
SSP_GT_STRG_ECAL_CLUSTER_EMIN       200
SSP_GT_STRG_ECAL_CLUSTER_WIDTH       96

########################
#
# Sector Trigger bit 3 
#
# ELECTRON = HTCC*PCAL*ECAL
########################
SSP_GT_STRG                           3
SSP_GT_STRG_EN                        1

# HTCC trigger logic
SSP_GT_STRG_HTCC_EN                   1
SSP_SLOT 3      # sector 1 SSP
SSP_GT_STRG_HTCC_MASK                 0x0000000000FF
SSP_SLOT 4      # sector 2 SSP
SSP_GT_STRG_HTCC_MASK                 0x00000000FF00
SSP_SLOT 5      # sector 3 SSP
SSP_GT_STRG_HTCC_MASK                 0x000000FF0000
SSP_SLOT 6      # sector 4 SSP
SSP_GT_STRG_HTCC_MASK                 0x0000FF000000
SSP_SLOT 7      # sector 5 SSP
SSP_GT_STRG_HTCC_MASK                 0x00FF00000000
SSP_SLOT 8      # sector 6 SSP
SSP_GT_STRG_HTCC_MASK                 0xFF0000000000
SSP_SLOT all
SSP_GT_STRG_HTCC_WIDTH                0

# PCAL cluster trigger logic: EMIN in 0.1 MeV units
SSP_GT_STRG_PCAL_CLUSTER_EMIN_EN          1
SSP_GT_STRG_PCAL_CLUSTER_EMIN          1000
SSP_GT_STRG_PCAL_CLUSTER_WIDTH           96

# ECAL cluster trigger logic: EMIN in 0.1MeV units
SSP_GT_STRG_ECAL_CLUSTER_EMIN_EN          1
SSP_GT_STRG_ECAL_CLUSTER_EMIN           100
SSP_GT_STRG_ECAL_CLUSTER_WIDTH           96

# PCAL+ECAL cluster trigger logic: EMIN in 0.1MeV units
SSP_GT_STRG_ECALPCAL_CLUSTER_EMIN_EN      1
SSP_GT_STRG_ECALPCAL_CLUSTER_EMIN      3000
SSP_GT_STRG_ECALPCAL_CLUSTER_WIDTH       96


########################
#
# Sector Trigger bit 4 #
#
# HTCC*PCAL
########################
SSP_GT_STRG                           4
SSP_GT_STRG_EN                        1

# HTCC trigger logic
SSP_GT_STRG_HTCC_EN                   1
SSP_SLOT 3      # sector 1 SSP
SSP_GT_STRG_HTCC_MASK                 0x0000000000FF
SSP_SLOT 4      # sector 2 SSP
SSP_GT_STRG_HTCC_MASK                 0x00000000FF00
SSP_SLOT 5      # sector 3 SSP
SSP_GT_STRG_HTCC_MASK                 0x000000FF0000
SSP_SLOT 6      # sector 4 SSP
SSP_GT_STRG_HTCC_MASK                 0x0000FF000000
SSP_SLOT 7      # sector 5 SSP
SSP_GT_STRG_HTCC_MASK                 0x00FF00000000
SSP_SLOT 8      # sector 6 SSP
SSP_GT_STRG_HTCC_MASK                 0xFF0000000000
SSP_SLOT all
SSP_GT_STRG_HTCC_WIDTH                0

# PCAL cluster trigger logic: EMIN in 0.1MeV units
SSP_GT_STRG_PCAL_CLUSTER_EMIN_EN      1
SSP_GT_STRG_PCAL_CLUSTER_EMIN      1000
SSP_GT_STRG_PCAL_CLUSTER_WIDTH       96

# ECAL cluster trigger logic: EMIN in 0.1MeV units
SSP_GT_STRG_ECAL_CLUSTER_EMIN_EN      0
SSP_GT_STRG_ECAL_CLUSTER_EMIN       100
SSP_GT_STRG_ECAL_CLUSTER_WIDTH       96

########################
#
# Sector Trigger bit 5 
#
# HTCC*ECAL
########################
SSP_GT_STRG                           5
SSP_GT_STRG_EN                        1

# HTCC trigger logic
SSP_GT_STRG_HTCC_EN                   1
SSP_SLOT 3      # sector 1 SSP
SSP_GT_STRG_HTCC_MASK                 0x0000000000FF
SSP_SLOT 4      # sector 2 SSP
SSP_GT_STRG_HTCC_MASK                 0x00000000FF00
SSP_SLOT 5      # sector 3 SSP
SSP_GT_STRG_HTCC_MASK                 0x000000FF0000
SSP_SLOT 6      # sector 4 SSP
SSP_GT_STRG_HTCC_MASK                 0x0000FF000000
SSP_SLOT 7      # sector 5 SSP
SSP_GT_STRG_HTCC_MASK                 0x00FF00000000
SSP_SLOT 8      # sector 6 SSP
SSP_GT_STRG_HTCC_MASK                 0xFF0000000000
SSP_SLOT all
SSP_GT_STRG_HTCC_WIDTH                0

# PCAL cluster trigger logic: EMIN in 0.1MeV units
SSP_GT_STRG_PCAL_CLUSTER_EMIN_EN      0
SSP_GT_STRG_PCAL_CLUSTER_EMIN      1000
SSP_GT_STRG_PCAL_CLUSTER_WIDTH       96

# ECAL cluster trigger logic: EMIN in 0.1MeV units
SSP_GT_STRG_ECAL_CLUSTER_EMIN_EN      1
SSP_GT_STRG_ECAL_CLUSTER_EMIN       100
SSP_GT_STRG_ECAL_CLUSTER_WIDTH       96

########################
#
# Sector Trigger bit 6 
#
# PCAL*ECAL
########################
SSP_GT_STRG                           6
SSP_GT_STRG_EN                        1

# PCAL cluster trigger logic: EMIN in 0.1MeV units
SSP_GT_STRG_PCAL_CLUSTER_EMIN_EN      1
SSP_GT_STRG_PCAL_CLUSTER_EMIN      1000
SSP_GT_STRG_PCAL_CLUSTER_WIDTH       96

# ECAL cluster trigger logic: EMIN in 0.1MeV units
SSP_GT_STRG_ECAL_CLUSTER_EMIN_EN      1
SSP_GT_STRG_ECAL_CLUSTER_EMIN       100
SSP_GT_STRG_ECAL_CLUSTER_WIDTH       96


########################
# Sector Trigger bit 7 #
#
# FTOF*PCAL
########################
SSP_GT_STRG                           7
SSP_GT_STRG_EN                        1

# FTOF logic
SSP_GT_STRG_FTOF_EN                   1
#SSP_GT_STRG_FTOF_WIDTH              96
SSP_GT_STRG_FTOF_WIDTH                0

# PCAL cluster trigger logic: EMIN in 0.1MeV units
SSP_GT_STRG_PCAL_CLUSTER_EMIN_EN      1
SSP_GT_STRG_PCAL_CLUSTER_EMIN       100
SSP_GT_STRG_PCAL_CLUSTER_WIDTH       96




SSP_CRATE end





########################################
# Trigger stage 3 (vtp in trig2 crate) #
########################################

VTP_CRATE trig2vtp

VTP_W_OFFSET 7900
VTP_W_WIDTH   400

#        slot: 10 13  9 14  8 15  7 16  6 17  5 18  4 19  3 20
#     payload:  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16
VTP_PAYLOAD_EN  0  0  0  0  1  0  1  0  1  0  1  0  1  0  1  0

# 6780 corresponds to 7900 FADC latency
#VTP_GT_LATENCY 6780

# correct for HTCC
VTP_GT_LATENCY 6700



VTP_GT_WIDTH   16

# TRIGGER BITS: 
#              trig number 
#              |   ssp trig mask 
#              |   |   ssp sector mask        
#              |   |   |  multiplicity 
#              |   |   |  |  coincidence=#extended_clock_cycles 
#              |   |   |  |  |  ssp central trig mask
#              |   |   |  |  |  |
#
# Electron, All Sectors
VTP_GT_TRGBIT  0   8  63  1  1  0  # SSP STRG3, SECTOR 1-6

# Electron, Individual Sectors
VTP_GT_TRGBIT  1   8   1  1  1  0  # SSP STRG3, SECTOR 1
VTP_GT_TRGBIT  2   8   2  1  1  0  # SSP STRG3, SECTOR 2
VTP_GT_TRGBIT  3   8   4  1  1  0  # SSP STRG3, SECTOR 3
VTP_GT_TRGBIT  4   8   8  1  1  0  # SSP STRG3, SECTOR 4
VTP_GT_TRGBIT  5   8  16  1  1  0  # SSP STRG3, SECTOR 5
VTP_GT_TRGBIT  6   8  32  1  1  0  # SSP STRG3, SECTOR 6

# HTCC
VTP_GT_TRGBIT  7   1   1  1  1  0  # SSP STRG3, SECTOR 1
VTP_GT_TRGBIT  8   1   2  1  1  0  # SSP STRG3, SECTOR 2
VTP_GT_TRGBIT  9   1   4  1  1  0  # SSP STRG3, SECTOR 3
VTP_GT_TRGBIT 10   1   8  1  1  0  # SSP STRG3, SECTOR 4
VTP_GT_TRGBIT 11   1  16  1  1  0  # SSP STRG3, SECTOR 5
VTP_GT_TRGBIT 12   1  32  1  1  0  # SSP STRG3, SECTOR 6

# PCAL
VTP_GT_TRGBIT 13   2   1  1  1  0  # SSP STRG3, SECTOR 1
VTP_GT_TRGBIT 14   2   2  1  1  0  # SSP STRG3, SECTOR 2
VTP_GT_TRGBIT 15   2   4  1  1  0  # SSP STRG3, SECTOR 3
VTP_GT_TRGBIT 16   2   8  1  1  0  # SSP STRG3, SECTOR 4
VTP_GT_TRGBIT 17   2  16  1  1  0  # SSP STRG3, SECTOR 5
VTP_GT_TRGBIT 18   2  32  1  1  0  # SSP STRG3, SECTOR 6

# ECAL
VTP_GT_TRGBIT 19   4   1  1  1  0  # SSP STRG3, SECTOR 1
VTP_GT_TRGBIT 20   4   2  1  1  0  # SSP STRG3, SECTOR 2
VTP_GT_TRGBIT 21   4   4  1  1  0  # SSP STRG3, SECTOR 3
VTP_GT_TRGBIT 22   4   8  1  1  0  # SSP STRG3, SECTOR 4
VTP_GT_TRGBIT 23   4  16  1  1  0  # SSP STRG3, SECTOR 5
VTP_GT_TRGBIT 24   4  32  1  1  0  # SSP STRG3, SECTOR 6

# HTCC*PCAL
VTP_GT_TRGBIT 25  16  63  1  1  0  

# HTCC*ECAL
VTP_GT_TRGBIT 26  32  63  1  1  0  

# PCAL*ECAL
VTP_GT_TRGBIT 27  64  63  1  1  0  

# FTOF*PCAL
VTP_GT_TRGBIT 28 128  63  1  1  0  


# PULSER
VTP_GT_TRG             31
#VTP_GT_TRG_PULSER_FREQ 10.0
VTP_GT_TRG_PULSER_FREQ 1000.0

VTP_CRATE end

############################
# TS settings (trig1 crate)
############################

TS_CRATE trig1

#lock-roc mode
#TS_BLOCK_LEVEL   1
#TS_BUFFER_LEVEL  1


# with micromega
TS_BLOCK_LEVEL   10
TS_BUFFER_LEVEL   8
TS_HOLDOFF   1 30 1
TS_HOLDOFF   2 30 1
TS_HOLDOFF   3 30 1
TS_HOLDOFF   4 30 1

# production
#TS_BLOCK_LEVEL   20
#TS_BUFFER_LEVEL   8
#TS_HOLDOFF   1 20 1
#TS_HOLDOFF   2 20 1
#TS_HOLDOFF   3 15 1
#TS_HOLDOFF   4 10 1

# crashes VTPs
#TS_BLOCK_LEVEL   40
#TS_BUFFER_LEVEL   8
#TS_HOLDOFF   1 10 1
#TS_HOLDOFF   2 10 1
#TS_HOLDOFF   3  7 1
#TS_HOLDOFF   4  5 1

#
# TS GTP trigger mask
#
TS_GTP_INPUT_MASK 0xFFFFFFFF

#bit 28
#TS_GTP_INPUT_MASK 0x10000000

##TS_GTP_INPUT_MASK 0x00000000


#
# TS FP trigger mask
#
# 0x100 - SVT
# 0x200 - CTOF
# 0x400 - CND
# 0x800 - MVT
# 0x1000 - helicity
# TS_FP_INPUT_MASK     0x00001F00

TS_FP_INPUT_MASK 0x00001000
###TS_FP_INPUT_MASK 0x00000000

# TS_GTP_PRESCALE bit prescale
# TS_FP_PRESCALE bit prescale
# Note: actual prescale is 2^prescale.
#       prescale from 0 to 15
#       bit from 0 to 31  ???? 1-32  ???


#
# NO PRESCALE ON MAIN TRIGGER BITS 1-7
#

# Prescale HTCC (bits 8-13)
TS_GTP_PRESCALE  8 13
TS_GTP_PRESCALE  9 13
TS_GTP_PRESCALE 10 13
TS_GTP_PRESCALE 11 13
TS_GTP_PRESCALE 12 13
TS_GTP_PRESCALE 13 13

# Prescale PCAL (bits 14-19)
TS_GTP_PRESCALE 14 13
TS_GTP_PRESCALE 15 13
TS_GTP_PRESCALE 16 13
TS_GTP_PRESCALE 17 13
TS_GTP_PRESCALE 18 13
TS_GTP_PRESCALE 19 13

# Prescale ECAL (bits 20-25)
TS_GTP_PRESCALE 20 13
TS_GTP_PRESCALE 21 13
TS_GTP_PRESCALE 22 13
TS_GTP_PRESCALE 23 13
TS_GTP_PRESCALE 24 13
TS_GTP_PRESCALE 25 13

# Prescale HTCC*PCAL
TS_GTP_PRESCALE 26 13

# Prescale HTCC*ECAL
TS_GTP_PRESCALE 27 13

# Prescale PCAL*ECAL
TS_GTP_PRESCALE 28 13

# Prescale FTOF*PCAL
TS_GTP_PRESCALE 29 15

TS_GTP_PRESCALE 30 13


# First arg:      0-disable, 
#                 1-enable; 
#                 |   Prescale (15-7Hz, 7-3.5kHz, 5-15kHz, 4-30kHz, 3-60kHz)
#                 |   |
TS_RANDOM_TRIGGER 0   5

TS_CRATE end

