#!/bin/bash

#############################
#
#  Usage: ./set_trig2_muonemax.bash <pcal_emax 100keV units> <ecal_emax 100keV units>
#
############################

pcal_emax=$1
ecal_emax=$2

for slot in {3..8}; do
  for strg in {1..2}; do
    echo "Setting PCAL emax(0.1MeV units) slot $slot, strg $strg: $1"
    tcpClient trig2 "sspGt_SetTrigger_PcalClusterEmax($slot,$strg,$1)"
  done
done

for slot in {3..8}; do
  for strg in {1..2}; do
    echo "Setting ECAL emax(0.1MeV units) slot $slot, strg $strg: $2"
    tcpClient trig2 "sspGt_SetTrigger_EcalClusterEmax($slot,$strg,$2)"
  done
done

