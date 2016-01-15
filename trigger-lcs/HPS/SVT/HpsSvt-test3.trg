
TI_CRATE all
TI_BLOCK_LEVEL 1
TI_BUFFER_LEVEL 8

# TI trigger RULES: NR triggers, time, timescale
# 4 triggers in 24*3840ns=92.16us
TI_HOLDOFF 4 24 1
# 1 trigger in 20*480ns=9.6us
TI_HOLDOFF 1 20 1


TI_ADD_SLAVE 2
TI_ADD_SLAVE 3



TI_CRATE end

include dpm/dpm-default.trg
include dpm/dpm-3sam-3rms.trg

