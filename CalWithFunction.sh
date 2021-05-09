#! /bin/bash

IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=4;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

totalEmpHr=0;
totalWorkingDays=0;

function getWorkingHours() {

    case $1 in
       $IS_FULL_TIME)
         workingHrs=8
            ;;
       $IS_PART_TIME)
         workingHours=4
            ;;
       *)
         workingHours=0
           ;;
     esac
     echo $workingHours

}
while [[ $totalWorkHours -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]

do
   ((totalWorkingDays++))
  workingHours="$( getWorkingHours $((RANDOM%3)) )"
  totalWokingHours=$(($totalWorkingHours*$workingHours))
done

totalSalary=$(($totalWorkHours+$EMP_RATE_PER_HR));;
