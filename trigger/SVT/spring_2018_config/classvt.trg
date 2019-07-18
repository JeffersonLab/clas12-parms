VSCM_CRATE svt1

VSCM_SLOT 3
include trigger/SVT/high_thresholds.cnf
VSCM_SLOT 3
include trigger/SVT/high_thresholds_r1s2.cnf
VSCM_SLOT 4
include trigger/SVT/high_thresholds.cnf
VSCM_SLOT 5
include trigger/SVT/high_thresholds.cnf
VSCM_SLOT 7
include trigger/SVT/high_thresholds_c1_bottom.cnf

VSCM_CRATE end

VSCM_CRATE svt2

VSCM_SLOT 3
include trigger/SVT/high_thresholds.cnf
VSCM_SLOT 4
include trigger/SVT/high_thresholds.cnf
VSCM_SLOT 5
include trigger/SVT/high_thresholds.cnf
VSCM_SLOT 7
include trigger/SVT/high_thresholds_c1_bottom.cnf
VSCM_SLOT 9
include trigger/SVT/high_thresholds_c2_top.cnf

VSCM_CRATE end

#VSCM_CONF_FILE config_high_thresholds.cnf
#
# main config file
#
#include ti/clasdev.cnf
#include dsc2/tdcpcal2.cnf
#include fadc250/adcpcal2.cnf
#include tdc1190/clasdev.cnf
