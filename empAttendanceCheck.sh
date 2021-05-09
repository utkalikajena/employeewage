#! /bin/bash

isPresent=1;
randomCheck=$((RANDOM%2));

if [ $isPresent -eq $randomCheck ];
then
       empWagePerHr=20;
       empFullDayHrs=8;
       salary=$(($empFullDayHrs*$empWagePerHr));
else
       salary=0;
fi
