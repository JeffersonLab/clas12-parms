#
#TI_CRATE      <tdcecal1>     <- crate name, usually IP name
#
#TI_ADD_SLAVE 1                     # for every slave need to be added
#
#TI_FIBER_DELAY_OFFSET 0x80 0xcf    # fiber delay and offsets (in HEX)
#
#TI_BLOCK_LEVEL 1                   # the number of events in readout block
#
#TI_BUFFER_LEVEL 1                  # 0 - pipeline mode, 1 - ROC Lock mode, >=2 - buffered mode
#
#TI_INPUT_PRESCALE bit prescale     # bit: 0-5, prescale: 0-15, actual prescale value is 2^prescale

TI_CRATE hps11

#TI_ADD_SLAVE 1
#TI_ADD_SLAVE 2
#TI_ADD_SLAVE 3

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
#
#CRATE      <tdcecal1>     <- crate name, usually IP name
#
#TI_ADD_SLAVE 1                     # for every slave need to be added
#
#TI_FIBER_DELAY_OFFSET 0x80 0xcf    # fiber delay and offsets (in HEX)
#
#TI_BLOCK_LEVEL 1                   # the number of events in readout block
#
#TI_BUFFER_LEVEL 1                  # 0 - pipeline mode, 1 - ROC Lock mode, >=2 - buffered mode
#
TI_CRATE hps12

TI_FIBER_DELAY_OFFSET 0x80 0xc9

#for standalone usage
TI_BLOCK_LEVEL 1
TI_BUFFER_LEVEL 8

TI_CRATE end
#
#CRATE      <tdcecal1>     <- crate name, usually IP name
#
#TI_ADD_SLAVE 1                     # for every slave need to be added
#
#TI_FIBER_DELAY_OFFSET 0x80 0xcf    # fiber delay and offsets (in HEX)
#
#TI_BLOCK_LEVEL 1                   # the number of events in readout block
#
#TI_BUFFER_LEVEL 1                  # 0 - pipeline mode, 1 - ROC Lock mode, >=2 - buffered mode
#
TI_CRATE hps1

TI_FIBER_DELAY_OFFSET 0x80 0xc9
###TI_BLOCK_LEVEL 1

TI_CRATE end
#
#CRATE      <tdcecal1>     <- crate name, usually IP name
#
#TI_ADD_SLAVE 1                     # for every slave need to be added
#
#TI_FIBER_DELAY_OFFSET 0x80 0xcf    # fiber delay and offsets (in HEX)
#
#TI_BLOCK_LEVEL 1                   # the number of events in readout block
#
#TI_BUFFER_LEVEL 1                  # 0 - pipeline mode, 1 - ROC Lock mode, >=2 - buffered mode
#
TI_CRATE hps2

TI_FIBER_DELAY_OFFSET 0x80 0xc9
###TI_BLOCK_LEVEL 1

TI_CRATE end
# asymmetric timing coincidence for clusters (0-3: in 4ns) before, after seed hit

GTP_CRATE all

GTP_CLUSTER_PULSE_COIN      2    2

# SEED thrershold in MeV (0-8191)
GTP_CLUSTER_PULSE_THRESHOLD 200

GTP_CRATE end
#
# dsc2 config file for expid=clondev
#
# this file contains settings  for JLAB VME Discriminators DSC2
#
# CRATE      <tdcecal1>     <- crate name, usually IP name
#
# DSC2_SLOT  2   <- slot#
#
# DSC2_WIDTH  20  40   <- TDC width (ns), TRG width (ns)
#
# DSC2_TDCMASK  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1     <- TDC enable mask
#
# DSC2_TRGMASK  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1     <- TRG enable mask
#
# DSC2_TDCORMASK  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1     <- TDC OR mask
#
# DSC2_TRGORMASK  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1     <- TRG OR mask
#
# DSC2_THRESHOLD  20  50   <- board threshold: TDC threshold (mV), TRG threshold (mV)
#
# DSC2_CH_THRESHOLD    0  20   50   <- channel threshold: channel#, TDC threshold (mV), TRG threshold (mV)
#
#    following, if used, will supersede TRG width:
#
# DSC2_TRGDIGITAL   40  64    <- board digital TRG output: width (ns), delay (ns)
#
# DSC2_CH_TRGDIGITAL   0   40  64    <- channel digital TRG output: channel#, width (ns), delay (ns)
#
#
DSC2_CRATE     all

DSC2_SLOT       all
DSC2_WIDTH       20     40
DSC2_THRESHOLD   10  10
#DSC2_TRGDIGITAL 140      0
#
DSC2_CRATE     end
#
# dsc2 config file for expid=clondev
#
# this file contains settings  for JLAB VME Discriminators DSC2
#
# CRATE      <tdcecal1>     <- crate name, usually IP name
#
# DSC2_SLOT  2   <- slot#
#
# DSC2_WIDTH  20  40   <- TDC width (ns), TRG width (ns)
#
# DSC2_TDCMASK  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1     <- TDC enable mask
#
# DSC2_TRGMASK  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1     <- TRG enable mask
#
# DSC2_TDCORMASK  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1     <- TDC OR mask
#
# DSC2_TRGORMASK  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1     <- TRG OR mask
#
# DSC2_THRESHOLD  20  50   <- board threshold: TDC threshold (mV), TRG threshold (mV)
#
# DSC2_CH_THRESHOLD    0  20   50   <- channel threshold: channel#, TDC threshold (mV), TRG threshold (mV)
#
#    following, if used, will supersede TRG width:
#
# DSC2_TRGDIGITAL   40  64    <- board digital TRG output: width (ns), delay (ns)
#
# DSC2_CH_TRGDIGITAL   0   40  64    <- channel digital TRG output: channel#, width (ns), delay (ns)
#
#
DSC2_CRATE     hps11

DSC2_SLOT       all
DSC2_WIDTH       20     40
DSC2_THRESHOLD   10  10
#DSC2_TRGDIGITAL 140      0

DSC2_SLOT       2
DSC2_CH_THRESHOLD    1  300   200
#
DSC2_CRATE     end
#
# dsc2 config file for expid=clondev
#
# this file contains settings  for JLAB VME Discriminators DSC2
#
# CRATE      <tdcecal1>     <- crate name, usually IP name
#
# DSC2_SLOT  2   <- slot#
#
# DSC2_WIDTH  20  40   <- TDC width (ns), TRG width (ns)
#
# DSC2_TDCMASK  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1     <- TDC enable mask
#
# DSC2_TRGMASK  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1     <- TRG enable mask
#
# DSC2_TDCORMASK  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1     <- TDC OR mask
#
# DSC2_TRGORMASK  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1     <- TRG OR mask
#
# DSC2_THRESHOLD  20  50   <- board threshold: TDC threshold (mV), TRG threshold (mV)
#
# DSC2_CH_THRESHOLD    0  20   50   <- channel threshold: channel#, TDC threshold (mV), TRG threshold (mV)
#
#    following, if used, will supersede TRG width:
#
# DSC2_TRGDIGITAL   40  64    <- board digital TRG output: width (ns), delay (ns)
#
# DSC2_CH_TRGDIGITAL   0   40  64    <- channel digital TRG output: channel#, width (ns), delay (ns)
#
#
DSC2_CRATE     hps12

DSC2_SLOT       all
DSC2_WIDTH       20     40
DSC2_THRESHOLD   10  10
#DSC2_TRGDIGITAL 140      0

DSC2_SLOT       2
DSC2_CH_THRESHOLD    1  300   200
#

#DSC2_ENABLE_DAQ_READOUT 3
#DSC2_ENABLE_DAQ_READOUT 4

DSC2_CRATE     end
#
# dsc2 config file for expid=clondev
#
# this file contains settings  for JLAB VME Discriminators DSC2
#
# CRATE      <tdcecal1>     <- crate name, usually IP name
#
# DSC2_SLOT  2   <- slot#
#
# DSC2_WIDTH  20  40   <- TDC width (ns), TRG width (ns)
#
# DSC2_TDCMASK  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1     <- TDC enable mask
#
# DSC2_TRGMASK  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1     <- TRG enable mask
#
# DSC2_TDCORMASK  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1     <- TDC OR mask
#
# DSC2_TRGORMASK  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1     <- TRG OR mask
#
# DSC2_THRESHOLD  20  50   <- board threshold: TDC threshold (mV), TRG threshold (mV)
#
# DSC2_CH_THRESHOLD    0  20   50   <- channel threshold: channel#, TDC threshold (mV), TRG threshold (mV)
#
#    following, if used, will supersede TRG width:
#
# DSC2_TRGDIGITAL   40  64    <- board digital TRG output: width (ns), delay (ns)
#
# DSC2_CH_TRGDIGITAL   0   40  64    <- channel digital TRG output: channel#, width (ns), delay (ns)
#
#
DSC2_CRATE     hps1

DSC2_SLOT       all
DSC2_WIDTH       20     40
DSC2_THRESHOLD   5  5
#DSC2_TRGDIGITAL 140      0
#
DSC2_CRATE     end
#
# dsc2 config file for expid=clondev
#
# this file contains settings  for JLAB VME Discriminators DSC2
#
# CRATE      <tdcecal1>     <- crate name, usually IP name
#
# DSC2_SLOT  2   <- slot#
#
# DSC2_WIDTH  20  40   <- TDC width (ns), TRG width (ns)
#
# DSC2_TDCMASK  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1     <- TDC enable mask
#
# DSC2_TRGMASK  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1     <- TRG enable mask
#
# DSC2_TDCORMASK  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1     <- TDC OR mask
#
# DSC2_TRGORMASK  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1     <- TRG OR mask
#
# DSC2_THRESHOLD  20  50   <- board threshold: TDC threshold (mV), TRG threshold (mV)
#
# DSC2_CH_THRESHOLD    0  20   50   <- channel threshold: channel#, TDC threshold (mV), TRG threshold (mV)
#
#    following, if used, will supersede TRG width:
#
# DSC2_TRGDIGITAL   40  64    <- board digital TRG output: width (ns), delay (ns)
#
# DSC2_CH_TRGDIGITAL   0   40  64    <- channel digital TRG output: channel#, width (ns), delay (ns)
#
#
DSC2_CRATE     hps2

DSC2_SLOT       all
DSC2_WIDTH       20     40
DSC2_THRESHOLD   400  400
#DSC2_TRGDIGITAL 140      0
#

DSC2_ENABLE_DAQ_READOUT 2

DSC2_SCALER_REFPRESCALE 1

#DSC2_SCALER_REFPRESCALE 65535
#DSC2_SCALER_FLAGS 1

DSC2_CRATE     end
#
# tdc1190 config file - example
#
# this file contains settings for tdc CAEN 1190
#
# format:
# ~~~~~~~
# CRATE             rocbcal1   <- ROC/crate name, usually IP name
#
# TDC1190_ALLSLOTS             <- just keyword - all settings after this line will be implemented
#                                                for all slots, till TDC1190_SLOTS will be met
#
# TDC1190_SLOTS     3  8  19   <- slot_numbers - in which next settings will be implemented
#                                                till file ends or next TDC1190_SLOTS will be met
#
# TDC1190_BERR_FIFO  1   <- DMA Nwords method readout: 0 - use VME BUS error
#                                                      1 - use event fifo
#
# TDC1190_BLT_EVENTS 1      <- to set BLT Event Number Register
# TDC1190_N_HITS     64     <- to set Max Number of Hits per Event (1,2,4,8,16,32,64,128)
# TDC1190_ALMOSTFULL 16384  <- set number of words in output buffer
#                              default is 64 words, max is 32735 words
# TDC1190_OUT_PROG   2      <- set the function for the output on the control connector
#                              0 : Data Ready
#                              1 : Full
#                              2 : Almost Full
#                              3 : Error
#
# TDC1190_W_WIDTH    750 <- Trigger Window Width, in ns (from 25 to 51175)
# TDC1190_W_OFFSET -1750 <- Trigger Window Offset, in ns (from -51175 to 1000)
# TDC1190_W_EXTRA    25  <- Extra Search Margin (after window), in ns (from 0 to 1250)
# TDC1190_W_REJECT   50  <- Reject Margin (before window), in ns (from 0 to 1250)
#
# TDC1190_EDGE       2   <- set Edge Detection: 1-trailing edge, 2-leading, 3-both
#
#
#
#                 0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 - channels ##
# TDC1190_MASK1   1  0  1  0  1  0  1  0  1  0  1  0  1  0  1  0   <- enable mask for ch.0-15
# TDC1190_MASK2   1  0  1  0  1  0  1  0  1  0  1  0  1  0  1  0   <- enable mask for ch.16-31
#....
# TDC1190_MASK8   1  0  1  0  1  0  1  0  1  0  1  0  1  0  1  0   <- enable mask for ch.112-127

TDC1190_CRATE all

TDC1190_ALLSLOTS

#TDC1190_A24_A32    2
#TDC1190_SNGL_BLT   3
#TDC1190_SST_RATE   0

TDC1190_BERR_FIFO  1

TDC1190_BLT_EVENTS 1
TDC1190_N_HITS     64
TDC1190_ALMOSTFULL 16384
TDC1190_OUT_PROG   2

#TDC1190_W_WIDTH    400
#TDC1190_W_OFFSET -1050
TDC1190_W_WIDTH   2550
TDC1190_W_OFFSET -2550


TDC1190_W_EXTRA    25
TDC1190_W_REJECT   50

TDC1190_EDGE       2

#                 0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 - channels ##
TDC1190_MASK1     1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
TDC1190_MASK2     1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
TDC1190_MASK3     1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
TDC1190_MASK4     1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
TDC1190_MASK5     1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
TDC1190_MASK6     1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
TDC1190_MASK7     1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
TDC1190_MASK8     1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1


TDC1190_CRATE end
#
# tdc1190 config file - example
#
# this file contains settings for tdc CAEN 1190
#
# format:
# ~~~~~~~
# CRATE             rocbcal1   <- ROC/crate name, usually IP name
#
# TDC1190_ALLSLOTS             <- just keyword - all settings after this line will be implemented
#                                                for all slots, till TDC1190_SLOTS will be met
#
# TDC1190_SLOTS     3  8  19   <- slot_numbers - in which next settings will be implemented
#                                                till file ends or next TDC1190_SLOTS will be met
#
# TDC1190_BERR_FIFO  1   <- DMA Nwords method readout: 0 - use VME BUS error
#                                                      1 - use event fifo
#
# TDC1190_BLT_EVENTS 1      <- to set BLT Event Number Register
# TDC1190_N_HITS     64     <- to set Max Number of Hits per Event (1,2,4,8,16,32,64,128)
# TDC1190_ALMOSTFULL 16384  <- set number of words in output buffer
#                              default is 64 words, max is 32735 words
# TDC1190_OUT_PROG   2      <- set the function for the output on the control connector
#                              0 : Data Ready
#                              1 : Full
#                              2 : Almost Full
#                              3 : Error
#
# TDC1190_W_WIDTH    750 <- Trigger Window Width, in ns (from 25 to 51175)
# TDC1190_W_OFFSET -1750 <- Trigger Window Offset, in ns (from -51175 to 1000)
# TDC1190_W_EXTRA    25  <- Extra Search Margin (after window), in ns (from 0 to 1250)
# TDC1190_W_REJECT   50  <- Reject Margin (before window), in ns (from 0 to 1250)
#
# TDC1190_EDGE       2   <- set Edge Detection: 1-trailing edge, 2-leading, 3-both
#
#
#
#                 0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 - channels ##
# TDC1190_MASK1   1  0  1  0  1  0  1  0  1  0  1  0  1  0  1  0   <- enable mask for ch.0-15
# TDC1190_MASK2   1  0  1  0  1  0  1  0  1  0  1  0  1  0  1  0   <- enable mask for ch.16-31
#....
# TDC1190_MASK8   1  0  1  0  1  0  1  0  1  0  1  0  1  0  1  0   <- enable mask for ch.112-127


TDC1190_CRATE hps11

TDC1190_ALLSLOTS

#TDC1190_A24_A32    2
#TDC1190_SNGL_BLT   3
#TDC1190_SST_RATE   0

TDC1190_BERR_FIFO  1

TDC1190_BLT_EVENTS 50

TDC1190_N_HITS     64
TDC1190_ALMOSTFULL 16384
TDC1190_OUT_PROG   2

#TDC1190_W_WIDTH    400
#TDC1190_W_OFFSET -1050
TDC1190_W_WIDTH   2550
TDC1190_W_OFFSET -2550


TDC1190_W_EXTRA    25
TDC1190_W_REJECT   50

TDC1190_EDGE       2

#                 0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 - channels ##
TDC1190_MASK1     1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
TDC1190_MASK2     1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
TDC1190_MASK3     1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
TDC1190_MASK4     1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
TDC1190_MASK5     1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
TDC1190_MASK6     1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
TDC1190_MASK7     1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
TDC1190_MASK8     1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1


TDC1190_CRATE end
#
# tdc1190 config file - example
#
# this file contains settings for tdc CAEN 1190
#
# format:
# ~~~~~~~
# CRATE             rocbcal1   <- ROC/crate name, usually IP name
#
# TDC1190_ALLSLOTS             <- just keyword - all settings after this line will be implemented
#                                                for all slots, till TDC1190_SLOTS will be met
#
# TDC1190_SLOTS     3  8  19   <- slot_numbers - in which next settings will be implemented
#                                                till file ends or next TDC1190_SLOTS will be met
#
# TDC1190_BERR_FIFO  1   <- DMA Nwords method readout: 0 - use VME BUS error
#                                                      1 - use event fifo
#
# TDC1190_BLT_EVENTS 1      <- to set BLT Event Number Register
# TDC1190_N_HITS     64     <- to set Max Number of Hits per Event (1,2,4,8,16,32,64,128)
# TDC1190_ALMOSTFULL 16384  <- set number of words in output buffer
#                              default is 64 words, max is 32735 words
# TDC1190_OUT_PROG   2      <- set the function for the output on the control connector
#                              0 : Data Ready
#                              1 : Full
#                              2 : Almost Full
#                              3 : Error
#
# TDC1190_W_WIDTH    750 <- Trigger Window Width, in ns (from 25 to 51175)
# TDC1190_W_OFFSET -1750 <- Trigger Window Offset, in ns (from -51175 to 1000)
# TDC1190_W_EXTRA    25  <- Extra Search Margin (after window), in ns (from 0 to 1250)
# TDC1190_W_REJECT   50  <- Reject Margin (before window), in ns (from 0 to 1250)
#
# TDC1190_EDGE       2   <- set Edge Detection: 1-trailing edge, 2-leading, 3-both
#
#
#
#                 0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 - channels ##
# TDC1190_MASK1   1  0  1  0  1  0  1  0  1  0  1  0  1  0  1  0   <- enable mask for ch.0-15
# TDC1190_MASK2   1  0  1  0  1  0  1  0  1  0  1  0  1  0  1  0   <- enable mask for ch.16-31
#....
# TDC1190_MASK8   1  0  1  0  1  0  1  0  1  0  1  0  1  0  1  0   <- enable mask for ch.112-127


TDC1190_CRATE hps12

TDC1190_ALLSLOTS

#TDC1190_A24_A32    2
#TDC1190_SNGL_BLT   3
#TDC1190_SST_RATE   0

TDC1190_BERR_FIFO  1

# set in ROL1 based on TI setting
###TDC1190_BLT_EVENTS 50
TDC1190_BLT_EVENTS 1

TDC1190_N_HITS     64
TDC1190_ALMOSTFULL 16384
TDC1190_OUT_PROG   2


#TDC1190_W_WIDTH    400
#TDC1190_W_OFFSET -1200


TDC1190_W_WIDTH   1000
TDC1190_W_OFFSET -3500


TDC1190_W_EXTRA    25
TDC1190_W_REJECT   50

TDC1190_EDGE       2

#                 0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 - channels ##
TDC1190_MASK1     1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
TDC1190_MASK2     1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
TDC1190_MASK3     1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
TDC1190_MASK4     1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
TDC1190_MASK5     1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
TDC1190_MASK6     1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
TDC1190_MASK7     1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
TDC1190_MASK8     1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1


TDC1190_CRATE end
#
# ssp config file
#
# this file contains settings for SSP
#
# format:
# ~~~~~~~
# SSP_CRATE             rocbcal1   <- ROC/crate name, usually IP name
#
# SSP_ALLSLOTS             <- just keyword - all settings after this line will be implemented
#                                                for all slots, till SSP_SLOTS will be met
#
# SSP_SLOTS     3  8  19   <- slot_numbers - in which next settings will be implemented
#                                                till file ends or next SSP_SLOTS will be met
#
# SSP_BERR  1   <- DMA Nwords method readout: 1 - enable VME BUS error
#                                             0 - disable VME BUS error
#
# SSP_BLOCK_LEVEL 1      <- to set block level
#
# SSP_W_WIDTH    N
#    N: 0 to 1023 - Trigger Window Width, in 4ns ticks
#
# SSP_W_OFFSET   N
#    N: 0 to 1023 - Trigger Window Offset, in 4ns ticks
#
# SSP_HPS_LATENCY  LATENCY
#    LATENCY: 0 to 511 - sets trigger latency (in 4ns ticks)
#
# SSP_HPS_SINGLES:
# ----------------
# SSP_HPS_SINGLES_EMIN  N  EMIN   EN
#    N:    0 or 1 - selects the hps singles trigger bit
#    EMIN: 0 to 8191MeV - cluster energies below this threshold are cut
#    EN:   1 - enables, 0 - disables
#
# SSP_HPS_SINGLES_EMAX  N  EMAX   EN
#    N:    0 or 1 - selects the hps singles trigger bit
#    EMAX: 0 to 8191MeV - cluster energies above this threshold are cut
#    EN:   1 - enables, 0 - disables
#
# SSP_HPS_SINGLES_NMIN  N  NMIN   EN
#    N:    0 or 1 - selects the hps singles trigger bit
#    NMIN: 0 to 9 - cluster with #hits below this threshold are cut
#    EN:   1 - enables, 0 - disables
#
# SSP_HPS_COSMICS:
# ----------------
# SSP_HPS_COSMIC_TIMECOINCIDENCE  T
#    T:    0 to 255 - sets cosmic hit coincidence time (in 4ns ticks)
#
# SSP_HPS_COSMIC_PATTERNCOINCIDENCE  pattern
#    pattern  - 3:1 LUT definition for scintillator coincidence pattern that is accepted/rejected
#                Scintillator channels are the last 3 channels (14-16) of FADC in slot 20
#                pattern = 254 will trigger on any hit channels
#                pattern = 128 will trigger when all 3 channels hit
#                pattern = 136 will trigger when channels 14&15 are hit
#                pattern = 232 will trigger when any 2 channels hit
#
# SSP_HPS_PAIRS:
# ----------------
# SSP_HPS_PAIRS_TIMECOINCIDENCE  N   T
#    N:    0 or 1 - selects the hps pair trigger bit
#    T:    0 to 15 - sets cluster pair hit coincidence time (in +/-4ns ticks)
#
# SSP_HPS_PAIRS_EMIN  N   EMIN
#    N:    0 or 1 - selects the hps pair trigger bit
#    EMIN: 0 to 8191MeV - clusters energies below this threshold are cut
#
# SSP_HPS_PAIRS_EMAX  N   EMAX
#    N:    0 or 1 - selects the hps pair trigger bit
#    EMAX: 0 to 8191MeV - clusters energies above this threshold are cut
#
# SSP_HPS_PAIRS_NMIN  N   NMIN
#    N:    0 or 1 - selects the hps pair trigger bit
#    NMIN: 0 to 9 - cluster with #hits below this threshold are cut
#
# SSP_HPS_PAIRS_SUMMAX  N   MAX   EN
#    N:    0 or 1 - selects the hps pair trigger bit
#    MAX:  0 to 8191MeV - cluster pairs energy sums above this threshold are cut
#    EN:   1 - enables, 0 - disables
#
# SSP_HPS_PAIRS_DIFFMAX  N  MAX   EN 
#    N:    0 or 1 - selects the hps pair trigger bit
#    MAX:  0 to 8191MeV - cluster pairs energy differences above this threshold are cut
#    EN:   1 - enables, 0 - disables
#
# SSP_HPS_PAIRS_COPLANARITY  N   ANGLE  EN
#    N:    0 or 1 - selects the hps pair trigger bit
#    ANGLE: 0 to 180 - cluster pair coplanarity with photon beam must be < +/-ANGLE (in degress)
#    EN:   1 - enables, 0 - disables
#
# SSP_HPS_PAIRS_ENERGYDIST  N   F  MIN  EN
#    N:    0 or 1 - selects the hps pair trigger bit
#    F:    0 to 8191 - conversion factor in MeV/mm to compensate cluster energy by radial distance from photon beam
#    MIN:  0 to 8191 - minimum threshold in MeV to accept cluster pair.
#          For each pair, the cluster with the smallest energy, Emin, is used in this cut.
#          That cluster's minimum distance to photon beam is computed, R, and tested in the equation:
#              MIN < Emin + F * R
#          When the above is true the cluster pair passes this cut, otherwise it is cut.
#    EN:   1 - enables, 0 - disables
#
# SSP_HPS_PULSER   F
#    F:     Pulser frequency (0 to 125MHz)
#
# SSP_HPS_SET_IO_SRC   OUTPUT_PIN     SIGNAL_SEL
#    OUTPUT_PIN selection:
#       LVDSOUT0        0
#       LVDSOUT1        1
#       LVDSOUT2        2
#       LVDSOUT3        3
#       LVDSOUT4        4
#       GPIO0           5
#       GPIO1           6
#       P2_LVDSOUT0     7
#       P2_LVDSOUT1     8
#       P2_LVDSOUT2     9
#       P2_LVDSOUT3     10
#       P2_LVDSOUT4     11
#       P2_LVDSOUT5     12
#       P2_LVDSOUT6     13
#       P2_LVDSOUT7     14
#       TRIG            15
#       SYNC            16
#
#    SIGNAL_SEL selection:
#       0          0
#       1          1
#       SYNC       2
#       TRIG1      3
#       TRIG2      4
#       LVDSIN0    5
#       LVDSIN1    6
#       LVDSIN2    7
#       LVDSIN3    8
#       LVDSIN4    9
#       P2LVDSIN0  10
#       P2LVDSIN1  11
#       P2LVDSIN2  12
#       P2LVDSIN3  13
#       P2LVDSIN4  14
#       P2LVDSIN5  15
#       P2LVDSIN6  16
#       P2LVDSIN7  17
#       PULSER     18
#       BUSY       19
#       TRIGGER0   20   (HPS SINGLES 0)
#       TRIGGER1   21   (HPS SINGLES 1)
#       TRIGGER2   22   (HPS PAIRS 0)
#       TRIGGER3   23   (HPS PAIRS 1)
#       TRIGGER4   24   (HPS LED)
#       TRIGGER5   25   (HPS COSMIC)
#       TRIGGER6   26
#       TRIGGER7   27

SSP_CRATE hps11

SSP_ALLSLOTS

SSP_BERR  1

SSP_BLOCK_LEVEL 1

SSP_W_WIDTH   100
SSP_W_OFFSET  756

SSP_HPS_PULSER 200         # 1Hz pulser period

# enable ecal triggers:
#SSP_HPS_SET_IO_SRC    7     20   # HPS SINGLES 0 -> TI TS1
SSP_HPS_SET_IO_SRC    8     21   # HPS SINGLES 1 -> TI TS2
#SSP_HPS_SET_IO_SRC    9     22   # HPS PAIRS 0   -> TI TS3
#SSP_HPS_SET_IO_SRC    10    23   # HPS PAIRS 1   -> TI TS4

# disable ecal triggers:
SSP_HPS_SET_IO_SRC    7     0   # HPS SINGLES 0 -> TI TS1
#SSP_HPS_SET_IO_SRC    8     0   # HPS SINGLES 1 -> TI TS2
SSP_HPS_SET_IO_SRC    9     0   # HPS PAIRS 0   -> TI TS3
SSP_HPS_SET_IO_SRC    10    0   # HPS PAIRS 1   -> TI TS4

# calibration triggers:
#SSP_HPS_SET_IO_SRC    11    24   # HPS LED       -> TI TS5
#SSP_HPS_SET_IO_SRC    11    25   # HPS COSMIC    -> TI TS5
#SSP_HPS_SET_IO_SRC    12    18   # PULSER        -> TI TS6

# disable calibration triggers:
SSP_HPS_SET_IO_SRC    11    0   # HPS LED/COSMIC    -> TI TS5
SSP_HPS_SET_IO_SRC    12    0   # PULSER        -> TI TS6




# coinc time 10=40 ns
SSP_HPS_COSMIC_TIMECOINCIDENCE  10

# cosmic: (B2 or B1) & B0 - two upper scintillators partially overlaped in coinc with bottom one
#SSP_HPS_COSMIC_PATTERNCOINCIDENCE  168

# cosmic: B2 or B1 or B0 - or of all scintillators
#SSP_HPS_COSMIC_PATTERNCOINCIDENCE  254

# cosmic: B0 - bottom scintillator only
#SSP_HPS_COSMIC_PATTERNCOINCIDENCE  170

# cosmic: B0 and B1
#SSP_HPS_COSMIC_PATTERNCOINCIDENCE 136

# led trigger
#SSP_HPS_COSMIC_PATTERNCOINCIDENCE  254

# cosmic B0 and B1 (136<<8) + led trigger (254<<0)
SSP_HPS_COSMIC_PATTERNCOINCIDENCE   35070

SSP_HPS_LATENCY 475

# Singles 0 trigger
SSP_HPS_SINGLES_EMIN  0  500  1
SSP_HPS_SINGLES_EMAX  0  2000 1
SSP_HPS_SINGLES_NMIN  0  3    1

# Singles 0 trigger
SSP_HPS_SINGLES_EMIN  1  950 1
SSP_HPS_SINGLES_EMAX  1  1750 1
SSP_HPS_SINGLES_NMIN  1  4    1

# Pairs 0 trigger
SSP_HPS_PAIRS_TIMECOINCIDENCE  0  5
SSP_HPS_PAIRS_EMIN             0  550
SSP_HPS_PAIRS_EMAX             0  1950 
SSP_HPS_PAIRS_NMIN             0  2
SSP_HPS_PAIRS_SUMMAX_MIN       0  1200 400  0
SSP_HPS_PAIRS_DIFFMAX          0  1800      0
SSP_HPS_PAIRS_COPLANARITY      0  70        0
SSP_HPS_PAIRS_ENERGYDIST       0  5.5  100  0

# Pairs 1 trigger
SSP_HPS_PAIRS_TIMECOINCIDENCE  1  4
SSP_HPS_PAIRS_EMIN             1  650
SSP_HPS_PAIRS_EMAX             1  1800
SSP_HPS_PAIRS_NMIN             1  3
SSP_HPS_PAIRS_SUMMAX_MIN       1  2300 1200 0
SSP_HPS_PAIRS_DIFFMAX          1  1300      0
SSP_HPS_PAIRS_COPLANARITY      1  40        0
SSP_HPS_PAIRS_ENERGYDIST       1  4.5  300  0



SSP_CRATE end
#
# hps1
#
FADC250_CRATE hps1


FADC250_SLOT all

FADC250_DAC  3300

#FADC250_W_OFFSET  1200
#FADC250_W_WIDTH   400


###FADC250_W_OFFSET  3300
#FADC250_W_WIDTH   400

# units in ns
# COSMIC:
#FADC250_W_OFFSET  3420

# AFTER FIRMWARE CHANGES
#FADC250_W_OFFSET  3180
#FADC250_W_WIDTH   400

FADC250_W_OFFSET 3008
FADC250_W_WIDTH 400

#raw mode
#FADC250_MODE      1

#pulse mode
FADC250_MODE      1 
FADC250_NPEAK     3
# units: nanoseconds
#FADC250_NSB       16
#FADC250_NSA       84
FADC250_NSB       12
FADC250_NSA       80

#       channel:  0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15
FADC250_ADC_MASK  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
FADC250_TRG_MASK  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
FADC250_TET_MASK  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0

#
#FADC250_TET 10
#FADC250_TET 5
#FADC250_TET 50
#FADC250_TET 25
#FADC250_TET 20
#FADC250_TET 0
FADC250_TET 12

#FADC250_SLOT     18
#FADC250_ADC_MASK  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0

# Set LED system trigger threshold
FADC250_SLOT      20
FADC250_CH_TET    15   500



FADC250_SLOT  3
FADC250_ALLCH_GAIN    0.213   0.232   0.213   0.220   0.229   0.186   0.188   0.214   0.189   0.206   0.206   0.215   0.213   0.221   0.231   0.200
FADC250_SLOT  4
FADC250_ALLCH_GAIN    0.204   0.198   0.219   0.207   0.217   0.217   0.218   0.210   0.211   0.224   0.222   0.215   0.228   0.269   0.196   0.209
FADC250_SLOT  5
FADC250_ALLCH_GAIN    0.205   0.203   0.179   0.211   0.192   0.211   0.204   0.214   0.205   0.204   0.201   0.228   0.209   0.219   0.188   0.213
FADC250_SLOT  6
FADC250_ALLCH_GAIN    0.215   0.199   0.225   0.186   0.200   0.177   0.232   0.213   0.225   0.197   0.212   0.217   0.200   0.188   0.212   0.203
FADC250_SLOT  7
FADC250_ALLCH_GAIN    0.224   0.217   0.194   0.206   0.215   0.220   0.217   0.206   0.190   0.160   0.227   0.193   0.217   0.201   0.192   0.221
FADC250_SLOT  8
FADC250_ALLCH_GAIN    0.208   0.205   0.196   0.208   0.207   0.205   0.201   0.209   0.200   0.204   0.196   0.225   0.223   0.197   0.213   0.212
FADC250_SLOT  9
FADC250_ALLCH_GAIN    0.220   0.215   0.207   0.187   0.178   0.207   0.209   0.209   0.202   0.190   0.221   0.197   0.195   0.220   0.201   0.225
FADC250_SLOT  14
FADC250_ALLCH_GAIN    0.205   0.203   0.211   0.257   0.219   0.208   0.217   0.189   0.185   0.202   0.197   0.233   0.208   0.232   0.192   0.232
FADC250_SLOT  15
FADC250_ALLCH_GAIN    0.200   0.218   0.217   0.206   0.238   0.217   0.211   0.205   0.213   0.214   0.189   0.213   0.221   0.216   0.209   0.212
FADC250_SLOT  16
FADC250_ALLCH_GAIN    0.198   0.197   0.195   0.213   0.229   0.191   0.194   0.206   0.200   0.215   0.200   0.222   0.208   0.219   0.222   0.203
FADC250_SLOT  17
FADC250_ALLCH_GAIN    0.213   0.218   0.217   0.190   0.219   0.227   0.202   0.206   0.210   0.212   0.227   0.201   0.212   0.215   0.216   0.209
FADC250_SLOT  18
FADC250_ALLCH_GAIN    0.191   0.231   0.194   0.208   0.219   0.211   0.207   0.195   0.191   0.207   0.201   0.199   0.208   0.211   0.217   0.201
FADC250_SLOT  19
FADC250_ALLCH_GAIN    0.191   0.197   0.204   0.208   0.209   0.215   0.211   0.216   0.205   0.248   0.216   0.225   0.238   0.236   0.193   0.197
FADC250_SLOT  20
FADC250_ALLCH_GAIN    0.210   0.213   0.178   0.194   0.196   0.209   0.248   0.210   0.188   0.229   0.242   0.227   0.207   1.000   1.000   1.000


FADC250_CRATE end
#
# hps2
#
FADC250_CRATE hps2


FADC250_SLOT all

FADC250_DAC  3300

#FADC250_W_OFFSET  1200
#FADC250_W_WIDTH   400


# COSMICS:
#FADC250_W_OFFSET  3420

#FADC250_W_OFFSET 3180
#FADC250_W_WIDTH   400

FADC250_W_OFFSET 3008
FADC250_W_WIDTH 400

#raw mode
#FADC250_MODE      1

#pulse mode
FADC250_MODE      1 
FADC250_NPEAK     3
# units: nanoseconds
#FADC250_NSB       16
#FADC250_NSA       84
FADC250_NSB 12
FADC250_NSA 80

#       channel:  0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15
FADC250_ADC_MASK  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
FADC250_TRG_MASK  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
FADC250_TET_MASK  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0

#
# in range (0-4095) inclusuve
#FADC250_TET 5
#FADC250_TET 10
#FADC250_TET 50
#FADC250_TET 25
#FADC250_TET 20
#FADC250_TET 0
FADC250_TET 12

# This was supposed to set high threshold on all channels,
# then to be overwritten by pmt channels below in order to
# decrease data size by factor of two by ignoring the bottom
# ecal.  Result was instead zero triggers (except for 1Hz pulser).
#FADC250_TET 3500

# Set cosmic system trigger threshold
# 12bit -> 1V: 40 = ~10mV threshold
# relative to pedestal
FADC250_SLOT      20
FADC250_CH_TET    13   40
FADC250_CH_TET    14   40
#FADC250_CH_TET    15   40



FADC250_SLOT  3
FADC250_ALLCH_GAIN    0.290   0.224   0.217   0.284   0.246   0.227   0.262   0.220   0.244   0.214   0.220   0.191   0.208   0.214   0.226   0.214
FADC250_SLOT  4
FADC250_ALLCH_GAIN    0.202   0.206   0.232   0.239   0.209   0.234   0.203   0.196   0.202   0.221   0.219   0.240   0.209   0.230   0.210   0.193
FADC250_SLOT  5
FADC250_ALLCH_GAIN    0.208   0.200   0.194   0.203   0.197   0.200   0.208   0.209   0.203   0.218   0.200   0.202   0.199   0.213   0.213   0.190
FADC250_SLOT  6
FADC250_ALLCH_GAIN    0.194   0.182   0.195   0.184   0.188   0.210   0.218   0.237   0.213   0.211   0.203   0.185   0.221   0.206   0.212   0.202
FADC250_SLOT  7
FADC250_ALLCH_GAIN    0.200   0.218   0.214   0.180   0.217   0.201   0.227   0.221   0.221   0.236   0.217   0.209   0.228   0.213   0.207   0.229
FADC250_SLOT  8
FADC250_ALLCH_GAIN    0.201   0.194   0.297   0.202   0.211   0.238   0.189   0.204   0.203   0.223   0.219   0.194   0.211   0.202   0.194   0.209
FADC250_SLOT  9
FADC250_ALLCH_GAIN    0.194   0.200   0.199   0.204   0.221   0.180   0.204   0.217   0.213   0.207   0.186   0.182   0.201   0.205   0.202   0.215
FADC250_SLOT  14
FADC250_ALLCH_GAIN    0.215   0.209   0.196   0.206   0.189   0.209   0.196   0.237   0.208   0.214   0.151   0.211   0.183   0.207   0.223   0.239
FADC250_SLOT  15
FADC250_ALLCH_GAIN    0.212   0.208   0.215   0.207   0.215   0.191   0.191   0.202   0.192   0.220   0.190   0.188   0.212   0.190   0.205   0.198
FADC250_SLOT  16
FADC250_ALLCH_GAIN    0.224   0.219   0.185   0.220   0.215   0.191   0.200   0.222   0.214   0.226   0.229   0.237   0.220   0.225   0.205   0.209
FADC250_SLOT  17
FADC250_ALLCH_GAIN    0.189   0.188   0.186   0.209   0.190   0.190   0.221   0.193   0.212   0.211   0.197   0.204   0.233   0.191   0.193   0.189
FADC250_SLOT  18
FADC250_ALLCH_GAIN    0.204   0.213   0.218   0.212   0.199   0.197   0.219   0.190   0.200   0.220   0.208   0.211   0.210   0.202   0.228   0.268
FADC250_SLOT  19
FADC250_ALLCH_GAIN    0.202   0.251   0.194   0.197   0.243   0.217   0.214   0.208   0.227   0.202   0.204   0.198   0.201   0.219   0.215   0.199
FADC250_SLOT  20
FADC250_ALLCH_GAIN    0.241   0.216   0.219   0.199   0.204   0.206   0.212   0.209   0.213   0.222   0.212   0.221   0.226   1.000   1.000   1.000


FADC250_CRATE end
