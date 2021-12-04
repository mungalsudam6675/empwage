#!/bin/bash -x

isPartTime=1
isFullTime=2
maxHoursInMonth=100
empRatePerHour=20
numOfWorkingDays=20
totalEmpHr=0
totalWorkingDays=0

declare -A dailyWages;
function getWorkingHrs()
{
        case $1 in
                        $isFullTime)
                                empHrs=8
                        ;;
                        $isPartTime)
                                empHrs=4
                        ;;
                        *)
                                empHrs=0
                        ;;
        esac
}

function getEmpWage()
{
                echo $(($1*$empRatePerHour))
}

while [[ $totalEmpHr -lt $maxHoursInMonth &&
$totalWorkingDays -lt $numOfWorkingDays ]]
do
        ((totalWorkingDays++))
        empCheck=$((RANDOM%3))
        getWorkingHrs $empCheck
        totalEmpHr=$(($totalEmpHr+$empHrs))
        dailyWages["$totalWorkingDays"]=$(($empHrs+$empRatePerHour))
done

totalSalary="$( getEmpWage $totalEmpHr)"
echo ${dailyWages[@]}  #using array

echo ${!dailyWages[@]}
