#! /bin/bash -x

#Program to Calculate FullTime and PartTime Salary Using ForLoop
isPartTime=1;
isFullTime=2;
totalSalary=0;
empRatePerHr=20;
numWorkingDays=20;

for (( day=1; day<=$numWorkingDays; day++ ))            #Loop Start

do
     empCheck=$(( RANDOM % 3))
       case    $empCheck in
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

      salary=$(($empHrs*$empRatePerHr))                 #Calculate Salary
      totalSalary=$(($totalSalary+$salary))             #Calculate TotalSalary
done



