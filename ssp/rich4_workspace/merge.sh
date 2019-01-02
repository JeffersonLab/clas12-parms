#!/bin/bash

cat rich4.cnf.safe sspRichTHR_50.cnf > rich41.cnf_merge
cat rich4.cnf.safe sspRichTHR_50.cnf sspRichGAIN_MIN.cnf > rich42.cnf_merge
cat rich4.cnf.safe sspRichTHR_50.cnf sspRichGAIN_ALL.cnf > rich43.cnf_merge

cat rich4.cnf.safe sspRichTHR_25.cnf > rich44.cnf_merge
cat rich4.cnf.safe sspRichTHR_25.cnf sspRichGAIN_MIN.cnf > rich45.cnf_merge
cat rich4.cnf.safe sspRichTHR_25.cnf sspRichGAIN_ALL.cnf > rich46.cnf_merge

cat rich4.cnf.safe sspRichTHR_100.cnf > rich47.cnf_merge
cat rich4.cnf.safe sspRichTHR_100.cnf sspRichGAIN_MIN.cnf > rich48.cnf_merge
cat rich4.cnf.safe sspRichTHR_100.cnf sspRichGAIN_ALL.cnf > rich49.cnf_merge

cat rich4.cnf.safe sspRichTHR_PVL1000_LT_STD.cnf sspRichGAIN_PVL1000_STD.cnf  > rich4PVL1000_1.cnf_merge
cat rich4.cnf.safe sspRichTHR_PVL1000_HT_STD.cnf sspRichGAIN_PVL1000_STD.cnf  > rich4PVL1000_2.cnf_merge
cat rich4.cnf.safe sspRichTHR_PVL1000_LT_RDO.cnf sspRichGAIN_PVL1000_REDO.cnf > rich4PVL1000_3.cnf_merge
cat rich4.cnf.safe sspRichTHR_PVL1000_HT_RDO.cnf sspRichGAIN_PVL1000_REDO.cnf > rich4PVL1000_4.cnf_merge

cat rich4.cnf.safe sspRichTHR_PVL1075_LT_STD.cnf sspRichGAIN_PVL1075_STD.cnf  > rich4PVL1075_1.cnf_merge
cat rich4.cnf.safe sspRichTHR_PVL1075_HT_STD.cnf sspRichGAIN_PVL1075_STD.cnf  > rich4PVL1075_2.cnf_merge
cat rich4.cnf.safe sspRichTHR_PVL1075_LT_RDO.cnf sspRichGAIN_PVL1075_REDO.cnf > rich4PVL1075_3.cnf_merge
cat rich4.cnf.safe sspRichTHR_PVL1075_HT_RDO.cnf sspRichGAIN_PVL1075_REDO.cnf > rich4PVL1075_4.cnf_merge

#cat rich4.cnf.safe sspRichTHR_PAVEL_1000_STD.cnf  sspRichGAIN_PAVEL1000_STD.cnf  >  rich4PVL1.cnf_merge
#cat rich4.cnf.safe sspRichTHR_PAVEL_1000_REDO.cnf sspRichGAIN_PAVEL1000_REDO.cnf >  rich4PVL2.cnf_merge
#cat rich4.cnf.safe sspRichTHR_PAVEL_1075_STD.cnf  sspRichGAIN_PAVEL1075_STD.cnf  >  rich4PVL3.cnf_merge
#cat rich4.cnf.safe sspRichTHR_PAVEL_1075_REDO.cnf sspRichGAIN_PAVEL1075_REDO.cnf >  rich4PVL4.cnf_merge


#eof
