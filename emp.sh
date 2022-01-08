echo "Welcome to Employee Wage Computation Program on Master Branch"
#! /bin/bash -x
partTime=1
fullTime=2
maxHoursInMonth=4
empRatePerHr=20
numOfWorkingDays=20
totalEmpHrs=0
toatlWorkingDays=0
function getWorkingHours(){
	local $empCheck=$1
	case $empCheck in 
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
while [[ $toatlEmpHrs -lt maxHoursInMonth && $toatlWorkingDays -lt numOfWorkingDays ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3))
	workingHours=`$( getWorkingHours $empCheck )`
	$toatlEmpHrs=$(($toatlEmpHrs+workingHours))	
	dailyWage[$toatlWorkingDays]=$(($workingHours*$empRatePerHr))
done
totalSalary=$(($totalWorkingHours*$empRatePerHr))
echo ${dailyWage[@]}

