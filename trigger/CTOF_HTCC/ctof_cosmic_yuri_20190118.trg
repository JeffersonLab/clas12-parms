
include trigger/CTOF_HTCC/ctof_cosmic.trg

include trigger/SVT/svt_prod.trg






#
# TI settings
#
TI_CRATE svt1

TI_FIBER_DELAY_OFFSET 0x80 0xcf

TI_BLOCK_LEVEL 1
TI_BUFFER_LEVEL 1
#TI_BLOCK_LEVEL 40
#TI_BUFFER_LEVEL 8

## ts1, ts2, ts3, ts4, ts5, ts6
TI_INPUT_MASK 0 1 0 0 0 0

## trigger rules
## 1 trigger in Nx0.48us
##TI_HOLDOFF 1 50 0
## 4 triggers in Nx3.84us
##TI_HOLDOFF 4 10 1
##500kHz / 2^15 => ~15Hz random

TI_RANDOM_TRIGGER 0 3

TI_CRATE end





#
# FADCs
#
FADC250_CRATE adcctof1
FADC250_SLOT all
FADC250_COMPRESSION  0
##FADC250_W_OFFSET  1860
FADC250_W_OFFSET  1450
FADC250_W_WIDTH   400
FADC250_CRATE end
include trigger/CTOF_HTCC/adcctof1_ped_cosmic.cnf

#
# TDCs
#
TDC1190_CRATE tdcctof1
TDC1190_SLOT all
##TDC1190_W_OFFSET -2060
TDC1190_W_OFFSET -1450
TDC1190_W_WIDTH    400
TDC1190_CRATE end
