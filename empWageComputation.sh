#!/bin/bash -x
echo "Welcome to Employee Wage Computation"

isPresent=0;
isAbsent=1;
randomNumber=$(( RANDOM%2 ))

if [[ randomNumber -eq isPresent ]]
then
	empRatePerHrs=20;
	empHrs=8;
	salary=$(( $empHrs * $empRatePerHrs ))
else
	salary=0;
fi
