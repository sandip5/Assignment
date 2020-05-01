#!/bin/bash -x
echo "Welcome to Employee Wage Computation"

isPresent=0;
randomNumber=$(( RANDOM%2 ))

if [[ isPresent -eq randomNumber ]]
then
	echo "Employee is Present"
else
	echo "Employee is Absent"
fi
