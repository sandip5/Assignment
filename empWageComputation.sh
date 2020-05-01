#!/bin/bash -x
echo "Welcome to Employee Wage Computation"

isPresent=0;
randomNumber=$(( RANDOM%2 ))

if [[ isPresent -eq randomNumber ]]
then
	empRatePerHrs=20;
	empHrs=8;
	salary=$(( $empHrs * $empRatePerHrs ))
else
	salary=0;
fi
