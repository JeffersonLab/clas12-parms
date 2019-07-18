#
# main config file
#
#include ti/clasdev.cnf
#include dsc2/tdcpcal2.cnf
#include fadc250/adcpcal2.cnf
#include tdc1190/clasdev.cnf

# LEAD_GLASS_SUM:
TI_INPUT_PRESCALE 1  0

# TOTAL_SUM:
TI_INPUT_PRESCALE 2  0

# LMS_LED:
TI_INPUT_PRESCALE 3  0

# LMS_ALPHA:
TI_INPUT_PRESCALE 4  0

# TAGGER_E:
TI_INPUT_PRESCALE 5  0

# SCINTILLATOR:
TI_INPUT_PRESCALE 6  0


# 1. lead glass sum
# 2. total sum
# 3. lms led
# 4. lms alpha
# 5. tagger
# 6. scintillator

TI_INPUT_MASK 1 1 0 0 0 0

# Ti input mask is not working.
# During calibration, we have lms_led for the fist 10k events,
# then next 10k from lms_alpha,
# then lead glass sum .or. total sum .or. tagger.
