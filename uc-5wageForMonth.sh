#!/bin/bash -x

isPartTime=1
isFullTime=2
totalSalary=0
empRatePerHr=20
numOfWorkingDay=20

for (( day=1; day<=$numOfWorkingDay; day++ ))
do
	empCheck=$((RANDOM%3))
		case $empCheck in
			$isPartTime)
				empHrs=4
				;;
			$isFulltime)
				empHrs=	8
				;;
			*)
				empHrs=0
				;;
		esac
	salary=$(($empHrs*$empRatePerHr))
	totalSalary=$(($salary+$totalSalary))
done

