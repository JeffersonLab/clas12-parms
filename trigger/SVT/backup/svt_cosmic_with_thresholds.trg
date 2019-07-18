# SVT thresholds

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
include trigger/SVT/killmask_svt1.cnf
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
#include trigger/SVT/killmask_r2s10t.cnf
include trigger/SVT/killmask_svt2.cnf
VSCM_CRATE end
#include trigger/SVT/killmask.cnf

