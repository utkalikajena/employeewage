#! /bin/bash

isPartTime=1;
isFullTime=2;
empRatePerHr=20;
empCheck=$((RANDOM%3))

case $empCheck in
         $isFullTime)
                  empHrs=12
                     ;;
         $isPartTime)
                  empHrs=8
                     ;;
esac

salary=$(($empHrs*$empRatePerHr));

