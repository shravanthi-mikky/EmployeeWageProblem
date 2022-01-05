#! /bin/bash -x
echo "Welcome to Employee Wage Computation Program on Master Branch"
isPresent=1
randomnum=$(($RANDOM%2))
if [  isPresent -eq $randomnum ]
then
	echo "Employee is Present "
else
	echo "Employee is Absent "
fi
#Calculate Daily Employee Wage
days=20
hours=8
wage=$(( $randomnum * $days * $hours ))
echo "Daily wage of employee is : " $wage
