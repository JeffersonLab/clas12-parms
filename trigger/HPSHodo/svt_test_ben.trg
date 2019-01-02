# SVT thresholds

VSCM_CRATE all
VSCM_SLOT all

# Set discriminators on U3,U4 FSSR2 chips
FSSR_ADDR_REG_DISC_THR        2        0        255
FSSR_ADDR_REG_DISC_THR        3        0        255
FSSR_ADDR_REG_DISC_THR        6        0        255
FSSR_ADDR_REG_DISC_THR        7        0        255

FSSR_ADDR_REG_DISC_THR        2        1        50
FSSR_ADDR_REG_DISC_THR        3        1        50
FSSR_ADDR_REG_DISC_THR        6        1        50
FSSR_ADDR_REG_DISC_THR        7        1        50

FSSR_ADDR_REG_DISC_THR        2        2        65
FSSR_ADDR_REG_DISC_THR        3        2        65
FSSR_ADDR_REG_DISC_THR        6        2        65
FSSR_ADDR_REG_DISC_THR        7        2        65

FSSR_ADDR_REG_DISC_THR        2        3        80
FSSR_ADDR_REG_DISC_THR        3        3        80
FSSR_ADDR_REG_DISC_THR        6        3        80
FSSR_ADDR_REG_DISC_THR        7        3        80

FSSR_ADDR_REG_DISC_THR        2        4        95
FSSR_ADDR_REG_DISC_THR        3        4        95
FSSR_ADDR_REG_DISC_THR        6        4        95
FSSR_ADDR_REG_DISC_THR        7        4        95

FSSR_ADDR_REG_DISC_THR        2        5        110
FSSR_ADDR_REG_DISC_THR        3        5        110
FSSR_ADDR_REG_DISC_THR        6        5        110
FSSR_ADDR_REG_DISC_THR        7        5        110

FSSR_ADDR_REG_DISC_THR        2        6        125
FSSR_ADDR_REG_DISC_THR        3        6        125
FSSR_ADDR_REG_DISC_THR        6        6        125
FSSR_ADDR_REG_DISC_THR        7        6        125

FSSR_ADDR_REG_DISC_THR        2        7        140
FSSR_ADDR_REG_DISC_THR        3        7        140
FSSR_ADDR_REG_DISC_THR        6        7        140
FSSR_ADDR_REG_DISC_THR        7        7        140

VSCM_SLOT 7
include trigger/SVT/killmask_svt1.cnf
VSCM_CRATE end

VSCM_CRATE svt2

VSCM_SLOT 9
include trigger/SVT/killmask_svt2.cnf

VSCM_CRATE end

