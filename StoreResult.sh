#! /bin/bash

declare -A dailyWage
IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=4;
EMP_RATE_PER_HR=20;
MAX_WORKING_DAYS=0

totalEmpHr=0;
totalWokingDays=0;

function getWorkingHours() {

      case $1 in
         $IS_FULL_TIME)
             workHours=8
               ;;
         $IS_PART_TIME)
              workHours=4
                ;;
         *)
             workHours=0
                ;;
       esac
       echo $WorkHours

}
while [[ $totalWorkHours -lt $MAX_HOURS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
    ((totalWorkingDays++))
     workHours=$"$( getWorkingHours $((RANDOM%3)) )"
     totalWorkHours=$(($totalWorkHours*$workHours))
     dailyWage["Day_$totalWorkingDays"]=$(calWage $empHrs)
done

totalSalary=$(($totalWorkHours*$EMP_RATE_PER_HR));
echo salary:$salary dailyWages:${dailyWage[@]}

for i in ${!dailyWage[@]}
do
      echo $i:${dailyWage[$i]}
done
