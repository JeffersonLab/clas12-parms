#
# scaler1 testing
#

#
# TI settings
#
# TI
#

#TI_CRATE all

#TI_FIBER_DELAY_OFFSET 0x80 0xcf
#TI_BLOCK_LEVEL 1
#TI_BUFFER_LEVEL 1

# trigger rules
# 1 trigger in Nx0.48us
#TI_HOLDOFF 1 50 0

# 4 triggers in Nx3.84us
#TI_HOLDOFF 4 10 1

#500kHz / 2^15 => ~15Hz random
#TI_RANDOM_TRIGGER 1 15

#TI_INPUT_MASK 1 1 1 1 1 1

##TI_INPUT_PRESCALE 0 15
##TI_INPUT_PRESCALE 1 15
##TI_INPUT_PRESCALE 2 15
##TI_INPUT_PRESCALE 3 15
##TI_INPUT_PRESCALE 4 15
##TI_INPUT_PRESCALE 5 15

#TI_CRATE end


#-- Comments:
# Format
# Configuration entries are organised in lines
# # - is comment line
# * - is wildcard, "Feu *", means all FEUs; "Dream *" means all Dreams 
#--------------------------------------------------------------------------------

MVT_CRATE svt3

#######################################
# Global System parameters
#######################################
# Possible RunModes: Standalone, Clas12
# In the Standalone mode clock, trigger and sync commands come from TI
# In the Clas12 mode clock, trigger and sync commands come from Trigger Supervisor
MVT_Sys Name           Mvt
MVT_Sys RunMode        Standalone
MVT_Sys NbOfSmpPerEvt   50
MVT_Sys NbOfEvtPerBlk   1
MVT_Sys ClkMode        Smp40_Rd40
MVT_Sys SparseSmp       0

# Set to 1000000 for prescale data only; must be > 0
MVT_Sys BlockPrescale   1
# Set 0 for no limit
MVT_Sys EventLimit      0

# Report Raw Data : valid only in Standalone mode
MVT_Sys RepRawData      1

# Choose Composite data format : Unpacked (default) or Packed
MVT_Sys CmpDataFmt Packed

# Self trigger latency in [0;8191] ns range
MVT_Sys SelfTrigLat 4096 # ns
# Self trigger coinsidence window in [0;511] ns range
MVT_Sys SelfTrigWin 200 # ns


# BE Crate configuration
MVT_Bec 1 CrateId 63
# Bec Id Slot SlotNum Dev DevNum BaseAdr_Reg_A24 BaseAdr_FIFO_A32
MVT_Bec 1 Slot 21 Ti  1 0x00A00000 0x08000000 Mblk Undef
MVT_Bec 1 Slot 16 Beu 1 0x00800000 0x0A000000 Mblk First
MVT_Bec 1 BaseAdr_A32m_Com 0 0x0B000000 0x12000000

#######################################
# Feu Ids and IPs
#######################################
# BE Crate 1 topology
#           Crate   1                               2                               3
#            Slot   1   2   3   4   5   6   7   8   1   2   3   4   5   6   7   8   1   2   3   4   5   6   7   8
#             Fid   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17  18  19  20  21  22  23  24  25  26  27  28  29  30  31  32
#        Splitter  f2  f4  f3  f1  f2  f4  f3  f1  f2  f4  f3  f1  f2  f4  f3  f1  f4  f2  f1  f3  f4  f2  f1  f3
#          Sector   A                               A                               B
#                   F   F  C6  Z6  C5  Z5  Z4  C4   F   F  C6  Z6  C5  Z5  Z4  C4   F   F  C6  Z6  C5  Z5  Z4  C4
  Bec 1 Beu 1 Feu  45  96  91  97  86   M  85  84   M   M   M   M   M   M   M   M   M   M   M   M   M   M   M   M   M   M   M   M   M   M   M   M
# Bec 1 Beu 1 Feu  45  96  91  97   M   M   M   M   M   M   M   M   M   M   M   M   M   M   M   M   M   M   M   M   M   M   M   M   M   M   M   M
# Splitter         f2  f4  f3  f1  f2  f4  f3  f1  f2  f4  f3  f1  f2  f4  f3  f1  f4  f2  f1  f3  f4  f2  f1  f3  f4  f2  f1  f3  f4  f2  f1  f3

# Bec level self trigger parameters
# multiplicity more than
MVT_Bec 1 SelfTrigMult   0
# Coin window in ns;
# 0 default - 20 ns.
MVT_Bec 1 SelfTrigWin    150



#######################################
# TI Specific parameters
#######################################
# Trigger Parameters
# TI TrigTimPar TrigDel TrigWid
# TrgDel = (val + 1)*4ns; Def: (7+1)*4ns 
# TrgWid = (val + 1)*4ns; Def: (7+1)*4ns
MVT_Ti * TrgTimPar 7 7
# Trigger source
# HFBR1 (to be set in Clas12 run mode); Soft; FpInp1; FpInp2, IntCst, IntRnd (to be set in standalone run mode)
MVT_Ti * TrgSrc IntRnd
MVT_Ti * TrgRate 50000
MVT_Ti * TrgPrescale 0 
# Trigger rules n Cnt Timebase
# limit number of triggers to n in the  Cnt x Timebase interval
# n - number of triggers from 1 to 4 (0 if no rules)
# Cnt - clock cycles count from 0 to 63
# Timebase - 0 - 16 ns; 1 500 ns
# Trigger rule 1 is overwritten if the NbOfSamples requirement is more stringent
MVT_Ti * TrgRule 1  1 0
MVT_Ti * TrgRule 2  0 0
MVT_Ti * TrgRule 3  0 0
MVT_Ti * TrgRule 4  0 0

# Sync source SynSrc: HFBR1 (to be set in Clas12 run mode); Soft (to be set in standalone run mode)
MVT_Ti * SynSrc Soft
MVT_Ti * SynDel 0
# Clock source: HFBR1 (to be set in Clas12 run mode); Internal (to be set in standalone run mode)
# BusySrc: SwB (to be set in Clas12 run mode); To be understood for standalone run mode
MVT_Ti * BsySrc SwB 
# Data Format: if set to 1 a 32-bit word with 16 Eid and 16 Tstp MSB-s are added; Def: 32-bit Eid & Tstp
MVT_Ti * ExtEidTstp 1
# Trigger inhibit threshold in event blocks
MVT_Ti * TrgInhThr 0 
# Vme parameters: to be understood;


#######################################
# Beu Specific parameters
#######################################
# Trigger FIFO occupancy and actions
# Not all actions are clear, to be decided later
MVT_Beu * TrgFifo_Lwm     1
MVT_Beu * TrgFifo_Hwm     48
MVT_Beu * TrgFifo_FullThr 59
MVT_Beu * TrgTstp_Offset    0

#Poissible Busy sources:    Either None (0) or Perm (1) or a logic "OR" of TrgFifo (2), Feu (4), InMem (8)
MVT_Beu * BsySrc          TrgFifo

#Poissible Sync sources:    Soft (0), Ti (1)
MVT_Beu * SynSrc          Ti

#Poissible Trigger sources: Soft (0), Const (1), Ti1 (2), Ti2 (3)
MVT_Beu * TrgSrc          Ti1

# Feu data packet concentration timeout in 8ns cycles
MVT_Beu * TimeOut   10000
# If 1, masks timed-out FEU inputs
MVT_Beu * MaskToInput 0
# if non 0 overwrites default thresholdvalue
MVT_Beu * InMemBusyThr 34768

# Emulation parameters: feu emulator data size (bytes)
# and period of internaly generated trigger in 8 ns clock cycles 
MVT_Beu * EmuDataSize 1
MVT_Beu * TrigRate    153937

# Self trigger parameters
MVT_Beu * SelfTrigMult   0
MVT_Beu * SelfTrigWid    200


#######################################
# FEU Specific parameters
#######################################

#######################################
# Trigger Interface/Generator Config register definitions
#TrigPipeLen | Src | Rate |
#    16-5    | 4-2 | 1-0  |
#-- Src: forced to Tg_Src_Int=0;  
#-- Rate: Does not matter
MVT_Feu * Trig_Conf_TrigPipeLen    1

#######################################
# Main common configuration register
#######################################
#-- Trigger interface clock source
#--   OnBoardClk  = '00' - On-board clock
#--   TrgIfConClk = '01' - Clock from on-board trigger interface connector  
#--   RecClk      = '1x' - Recovered Rocket IO clock
#-- AdcDtp
#--    Forces ADC to output digital data pattern
#-- DataPipeLen
#--    Determins Dummu Dream data pipeline length in Wclk ticks
#--    Example: for 16 us trigger latency with 48ns sampling clock period
#--    333 clock ticks are needed, hense the 9 bits
#-- Mask
#--     a bit per Dream, 1 - masked, 0 - active
#--    Up to 8 Dreams, hense 8 bits
#-- NbOfSamples
#--     Current absolute maximum for Dreams is 255 cells / channel, hense 8 bits
#--
#-- |27-26 |  25  |    24-16  |15-8|    7-0    |
#-- |ClkSel|AdcDtp|DataPipeLen|Mask|NbOfSamples|
MVT_Feu * Main_Conf_DreamMask    0x00

#######################################
#-- Adc registers
#-- reg val flag
#-- flag: 0 - set internal register
#-- flag: 1 - set internal register 
#--       and tell ADC to take all
#--       set registers into account
#######################################
MVT_Feu * Adc 0x16 0x00 1

#######################################
# Main Trigger logic register
#######################################
#-- Configuration register for Trigger logic
#-- |    29-24  |    23-18  |    17-12  |    11-0   |
#-- | OvrThersh | OvrWrnHwm | OvrWrnLwm | TimeStamp |
MVT_Feu * Main_Trig_TimeStamp  0
MVT_Feu * Main_Trig_OvrWrnLwm 1
MVT_Feu * Main_Trig_OvrWrnHwm 62
MVT_Feu * Main_Trig_OvrThersh 63
MVT_Feu * Main_Trig_LocThrot   0

#######################################
#-- FEU Run Control Register
#--|   ADC |     |              Algo                       |
#--|DataRdy|FeuId|Rsvd|ZsChkSmp|DrOvh| ZS |ComModSub|PedSub|
#--| 21-16 |15-8 |  7 |  6-4   |  3  |  2 |    1    |  0   |
#######################################
MVT_Feu * Feu_RunCtrl_Pd             0
MVT_Feu * Feu_RunCtrl_CM             0
MVT_Feu * Feu_RunCtrl_ZS             0
MVT_Feu * Feu_RunCtrl_DrOvr          0
MVT_Feu * Feu_RunCtrl_RdDel          0
MVT_Feu * Feu_RunCtrl_ZsChkSmp       4
MVT_Feu * Feu_RunCtrl_CmOffset     256
# Associated parameters
MVT_Feu * Feu_RunCtrl_PdFile         None
MVT_Feu * Feu_RunCtrl_ZsFile         None

#######################################
#-- FEU PreScale Register
#--|Inter Packet  |  Event |
#--|    Delay     |Prescale|
#--|   29 - 12    |  11-0  |
# given in nanoseconds
MVT_Feu * Feu_InterPacket_Delay 0

#######################################
#-- Communication registers
# UdpChan_MultiPackThr = Eth_MTU - MaxSmpData - 60
# MaxSmpData = 2220 bytes
# Eth_Mtu depends on Eth NIC but is less 8kbytes
# E.g. for MTU 7k th parameter is 4888
#######################################
MVT_Feu * UdpChan_Enable 0
MVT_Feu * UdpChan_MultiPackEnb 0
MVT_Feu * UdpChan_MultiPackThr 0

#######################################
#-- FEU Pulser Register
#--|TestFunc|Rsvd|DacTrigVal| Rsvd|DacBaseVal|
#--|   31   | 30 |  29-16   |15-14|   13-0   |
#######################################
MVT_Feu * Feu_Pulser_DreamTst     0x00
MVT_Feu * Feu_Pulser_PulseWid     16
MVT_Feu * Feu_Pulser_Enable       0

#######################################
#-- Self Trigger parameters
#-- Configuration
#--  0-7 |  8-10 |   11    |12-17 |18-23 | 24 |    25   |
#-- Dream| Multi | CmbHitFb|DrmHit|CmbHit|Trig| CmbHitOl|
#-- Masks|plicity|Propagate|Width |Width |Topo|Propagate|
#######################################
MVT_Feu  * SelfTrig_DreamMask    0xFF
MVT_Feu  * SelfTrig_Mult          0
MVT_Feu  * SelfTrig_DrmHitWid    14
MVT_Feu  * SelfTrig_CmbHitWid    14
MVT_Feu  * SelfTrig_TrigTopo      0
#######################################
#-- Self Trigger Veto parameter
#-- in Trig_Clk counts 8ns for Recovered
#--                   10ns for TCM
#######################################
#-- 0-23 |
#-- Veto |
#-- CNTR |
#######################################
Feu * SelfTrig_Veto   0
#######################################
# -- Self Trigger topology parameters
# -- MemAdrBase MemVal0 MemVal1 MemVal2 MemVal3
# --      MemAdr in range [0;28;4]
# --      MemVal 32-bit Hex value with leading 0x
MVT_Feu * SelfTrig_Topology    0 0x00000000 0x00000000 0x00000000 0x00000000
MVT_Feu * SelfTrig_Topology    4 0x00000000 0x00000000 0x00000000 0x00000000
MVT_Feu * SelfTrig_Topology    8 0x00000000 0x00000000 0x00000000 0x00000000
MVT_Feu * SelfTrig_Topology   12 0x00000000 0x00000000 0x00000000 0x00000000
MVT_Feu * SelfTrig_Topology   16 0x00000000 0x00000000 0x00000000 0x00000000
MVT_Feu * SelfTrig_Topology   20 0x00000000 0x00000000 0x00000000 0x00000000
MVT_Feu * SelfTrig_Topology   24 0x00000000 0x00000000 0x00000000 0x00000000
MVT_Feu * SelfTrig_Topology   28 0x00000000 0x00000000 0x00000000 0x00000000

#######################################
# Dream registers
#######################################
# HitEnb + Thresh + Peaking time register
MVT_Feu * Dream *  1 0x081F 0xD023 0x0000 0x0000
# Multiplicity register
MVT_Feu * Dream *  2 0x0000 0x0008 0x0000 0x0000
# Pulser registers
MVT_Feu * Dream *  3 0x0000 0x0000 0x0000 0x0000
MVT_Feu * Dream *  4 0x0000 0x0000 0x0000 0x0000
# Gain registers
MVT_Feu * Dream *  6 0xAAAA 0xAAAA 0xAAAA 0xAAAA
MVT_Feu * Dream *  7 0xAAAA 0xAAAA 0xAAAA 0xAAAA
# Discriminator mask registers
MVT_Feu * Dream *  8 0xFFFF 0xFFFF 0x0000 0x0000
MVT_Feu * Dream *  9 0xFFFF 0xFFFF 0x0000 0x0000
# Channel enable registers
MVT_Feu * Dream * 10 0xFFFF 0xFFFF 0x0000 0x0000
MVT_Feu * Dream * 11 0xFFFF 0xFFFF 0x0000 0x0000
# Latency register
MVT_Feu * Dream * 12 0x000F 0x0000 0x0000 0x0000


MVT_CRATE end