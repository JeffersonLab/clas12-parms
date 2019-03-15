#!/bin/bash

#############################
#
#  Usage: ./set_trigger_description.bash rgb_v3
#
############################

trigger_name=$1

     ./setTrigDescPrescaleStatus.sh $1.txt
     ./setTrigDesc-stage2.sh        $1_stage2.txt

echo ./setTrigDescPrescaleStatus.sh $1.txt
echo ./setTrigDesc-stage2.sh        $1_stage2.txt

