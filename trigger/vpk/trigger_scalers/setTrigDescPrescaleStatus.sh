#!/bin/bash
prefix=B_DAQ_GTTrigBit
while read line
do
    bit=`echo $line | awk '{print$1}'`
    stat=`echo $line | awk '{print$2}'`
    prescale=`echo $line | awk '{print$3}'`
    desc=`echo $line | awk '{$1="";$2="";$3="";print$0}'`
    caput $prefix:$bit:enable $stat
    caput ${prefix}Prescale:$bit $prescale
    caput $prefix:$bit.DESC $desc
done < $1
