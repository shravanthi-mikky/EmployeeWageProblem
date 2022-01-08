echo "Welcome to Employee Wage Computation Program on Master Branch"
#! /bin/bash -x

partTime=1
fullTime=2
maxHoursInMonth=4
empRatePerHr=20
numOfWorkingDays=20
totalEmpHrs=0
toatlWorkingDays=0
declare -A dailyWage
function getWorkingHours(){
	local empCheck=$1
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
function getEmpWage() {
	local empHr=$1
	echo $(($empHr*empRatePerHr))
}
while [[ $toatlEmpHrs -lt maxHoursInMonth && $toatlWorkingDays -lt numOfWorkingDays ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3))
	workingHours=`$( getWorkingHours $empCheck )`
	$toatlEmpHrs=$(( $toatlEmpHrs + $workingHours ))	
	dailyWage["Day "$toatlWorkingDays ]=`$(( getEmpWage $workingHours ))`
done
totalSalary=$(( $totalWorkingHours * $empRatePerHr ))
echo ${dailyWage[@]}
echo ${!dailyWage[@]}


