VTP_FIRMWARE fe_vtp_hallb_v7_ec.bin

VTP_W_OFFSET 7900
VTP_W_WIDTH 400

#        slot: 10 13  9 14  8 15  7 16  6 17  5 18  4 19  3 20
#     payload:  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16
VTP_PAYLOAD_EN  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1

#      fiber:  1  2  3  4
VTP_FIBER_EN   1  0  0  0

VTP_EC_FADCSUM_CH 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF 0xFFFF0FFF 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF 0x000000000

VTP_ECINNER_HIT_EMIN     100 # strip energy threshold to 1dim peak search
VTP_ECINNER_HIT_DT       8   # +-8clk = +-32ns strip coincidence window to form 1dim peak, and to form 2dim from 1dim
VTP_ECINNER_HIT_DALITZ   64    84

# dalitz have to be set around 72

VTP_ECOUTER_HIT_EMIN     100
VTP_ECOUTER_HIT_DT       8
VTP_ECOUTER_HIT_DALITZ   64    84
