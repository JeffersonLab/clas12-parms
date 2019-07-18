#
# tdc calibration trigger file: take data with internal pulser and low discr thresholds
#  (ssh clasrun@clonsl2, type 'fcmon', pick sector, detector and dsc2)
#

#
# TI settings
#
TI_CRATE all

TI_FIBER_DELAY_OFFSET 0x80 0xcf
TI_BLOCK_LEVEL 1
TI_BUFFER_LEVEL 1

# trigger rules
# 1 trigger in Nx0.48us
#TI_HOLDOFF 1 50 0

# 4 triggers in Nx3.84us
#TI_HOLDOFF 4 10 1

#500kHz / 2^15 => ~15Hz random
TI_RANDOM_TRIGGER 1 3

TI_CRATE end


#
# TDC settings
#

TDC1190_CRATE all

TDC1190_SLOT all

TDC1190_BERR_FIFO  1
TDC1190_BLT_EVENTS 1
TDC1190_N_HITS     64
TDC1190_ALMOSTFULL 16384
TDC1190_OUT_PROG   2

TDC1190_W_WIDTH   2550
TDC1190_W_OFFSET -2550

TDC1190_W_EXTRA    25
TDC1190_W_REJECT   50

TDC1190_EDGE       2

#set to 0 to turn compensation off, set to 1 to turn it on
TDC1190_COMPENSATION 1

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
# DSC2 settings
#
DSC2_CRATE all

DSC2_SLOT all

DSC2_WIDTH       35     40

# tdc threshold, trigger threshold
##DSC2_THRESHOLD   25     10
DSC2_THRESHOLD   4     10

#DSC2_TRGDIGITAL 60     32

#external pulser connected to input 2
#DSC2_TEST_INPUT 3

#internal pulser
DSC2_TEST_INPUT 4
DSC2_PULSER 1000000.

DSC2_CRATE     end
