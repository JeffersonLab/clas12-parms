
# SVT thresholds

VSCM_CRATE svt1

VSCM_SLOT 3
include trigger/SVT/high_thresholds.cnf
VSCM_SLOT 3
include trigger/SVT/high_thresholds_r1s2b.cnf
VSCM_SLOT 4
include trigger/SVT/high_thresholds.cnf
VSCM_SLOT 5
include trigger/SVT/high_thresholds.cnf
VSCM_SLOT 7
include trigger/SVT/high_thresholds_c1_bottom_r2s1b.cnf
VSCM_SLOT 8
include trigger/SVT/high_thresholds_c1_bottom_r2s3b.cnf
include trigger/SVT/killmask_svt1.cnf
VSCM_CRATE end

VSCM_CRATE svt2

VSCM_SLOT 3
include trigger/SVT/high_thresholds.cnf
include trigger/SVT/high_thresholds_r1s5t.cnf
VSCM_SLOT 4
include trigger/SVT/high_thresholds.cnf
VSCM_SLOT 5
include trigger/SVT/high_thresholds.cnf
VSCM_SLOT 7
include trigger/SVT/high_thresholds_c1_bottom_r2s5b.cnf
VSCM_SLOT 9
include trigger/SVT/high_thresholds_c2_top_r2s10t.cnf
#include trigger/SVT/killmask_r2s10t.cnf
include trigger/SVT/killmask_svt2.cnf
VSCM_CRATE end
#include trigger/SVT/killmask.cnf

