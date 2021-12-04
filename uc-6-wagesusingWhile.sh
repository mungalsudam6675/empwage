#!/bin/bash

isPartTime=1
isFullTime=2
maxRateInMonth=100
empRatePerHr=20
numOfWorkingDays=20
totalEmpHr=0
totalWorkingDays=0

while [[ $totalEmpHr -lt $maxRateInmonth 
&& $totalworkingDays-lt $numOfWorkingDays ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3))
		case $empCheck in
			$isPartTime)
                                empHrs=4
                                ;;
                        $isFulltime)
                                empHrs= 8
                                ;;
                        *)
                                empHrs=0
                                ;;
                esac
