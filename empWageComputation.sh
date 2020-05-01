#!/bin/bash -x
echo "Welcome to Employee Wage Computation"

IS_PART_TIME=2;
IS_FULL_TIME=1;
MAX_HRS_IN_MONTH=10;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

totalEmpHrs=0;
totalWorkingDays=0;

function getWorkingHours(){
	local empCheck="$1"
	case $1 in
                        $IS_FULL_TIME)
                                empHrs=8
                                ;;
                        $IS_PART_TIME)
                                empHrs=4
                                ;;
                        *)
                                empHrs=0
                                ;;
        esac
        echo $empHrs
}
function getEmpWage() {
	echo $(($1*$EMP_RATE_PER_HR))
}
while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3));
	empHrs="$( getWorkingHours $empCheck )"
	totalEmpHrs=$(($totalEmpHrs+$empHrs))
	dailyWages[$totalWorkingDays]=$(($empHrs*$EMP_RATE_PER_HR))
done

totalSalary="$( getEmpWage $totalEmpHrs )"
