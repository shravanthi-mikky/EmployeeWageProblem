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
