echo "Welcome to Employee Wage Computation Program on Master Branch"
#! /bin/bash -x
partTime=1
fullTime=2
maxHoursInMonth=4
empRatePerHr=20
numOfWorkingDays=20
totalEmployees=0
totalWorkingDays=0
totalWorkingHours=0
function getWorkingHours(){
	case $1 in 
		$fullTime)
			workingHours=8
			;;
		$partTime)
			workingHours=4
			;;
		*)
			workingHours=0
			;;
	esac
	echo $workingHours
}
while [[ $totalWorkingHours -lt maxHoursInMonth && $totalWorkingDays -lt numOfWorkingDays ]]
do
	((totalWorkingDays++))
	workingHours=`getWorkingHours`
	totalWorkingHours=$(($totalWorkingHours * $workingHours))	
done
totalSalary=$(($totalWorkingHours * $empRatePerHr))
echo $totalSalary
