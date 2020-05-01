#!/bin/bash -x
echo "Welcome to Employee Wage Computation"

isPresent=0;
isAbsent=1;
randomNumber=$(( RANDOM%2 ))

if [[ randomNumber -eq isPresent ]]
then
	echo "Employee is Present"
else
	echo "Employee is Absent"
fi
