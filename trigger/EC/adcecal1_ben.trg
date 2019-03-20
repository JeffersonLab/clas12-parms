#########################
# adcecal1 Crate
#########################

### TI
TI_CRATE adcecal1

TI_FIBER_DELAY_OFFSET 0x80 0xcf
TI_BUFFER_LEVEL 1
TI_BLOCK_LEVEL  1

## HOLD OFF
# 1.44 us holdoff:
#TI_HOLDOFF 1 3 1

# 30.240 us holdoff:
TI_HOLDOFF 1 63 1

# 4 triggers in 10*3840ns
TI_HOLDOFF 4 10 1


# PRESCALE-FACTOR = 2**N

TI_INPUT_PRESCALE 1  0
TI_INPUT_PRESCALE 2  0
TI_INPUT_PRESCALE 3  0
TI_INPUT_PRESCALE 4  0
TI_INPUT_PRESCALE 5  0
TI_INPUT_PRESCALE 6  0

TI_CRATE end

### FADC
FADC250_CRATE adcecal1

FADC250_SLOT all
FADC250_DAC  3300

#FADC250_W_OFFSET 1400
FADC250_W_OFFSET 7300
FADC250_W_WIDTH 400

#raw mode
#FADC250_MODE      1
FADC250_MODE      7

FADC250_NSB       12
FADC250_NSA       80
FADC250_NPEAK     1

#       channel:        0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15
FADC250_ADC_MASK        1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
FADC250_TRG_MASK        1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
FADC250_TET_IGNORE_MASK 0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0

FADC250_GAIN 1.0

FADC250_TET 200

include trigger/EC/adcecal1_peds.cnf

FADC250_CRATE end

