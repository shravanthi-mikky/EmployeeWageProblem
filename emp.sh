#! /bin/bash -x
echo "Welcome to Employee Wage Computation Program on Master Branch"
isPresent=1
randomnum=$(($RANDOM%2))
if [ $isPresent -eq $randomnum ]
then
	echo "Employee is Present "
else
        echo "Employee is absent "
fi
if [ $randomnum -eq 1 ]
then
	days=20
        hours=8
        wage=$(( $randomnum * $days * $hours ))
        echo "Daily wage of employee is : " $wage
else
	wage=0
	echo "Wage is " $wage
fi
# Adding partime employee wage
isPartTime=1
isFullTime=2
empRatePerHour=20
randomcheck=$(($RANDOM%3))
if [ $isFullTime -eq $randomcheck ]
then
	empHrs=8
elif [ $isPartTime -eq $randomcheck ]
then
	empHrs=4
else
	empHrs=0
fi
Salary=$(($empHrs*$empRatePerHour))
