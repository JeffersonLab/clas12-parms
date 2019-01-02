#!/bin/bash
prefix=B_DAQ:SSPGT_SEC1_TrigBit:
while read line
do
    bit=`echo $line | awk '{print$1}'`
    val=`echo $line | awk '{$1="";print$0}'`
    caput $prefix$bit.DESC $val
done < $1
