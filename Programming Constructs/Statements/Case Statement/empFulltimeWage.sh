#! /bin/bash -x

# Program to Findout Employee salary Depending upon FullTime and PartTime
isPartTime=1;
isFullTime=2;
empRatePerHr=20;
empCheck=$((RANDOM % 3));               #Generate Random

#Initialize cases
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

salary=$(($empHrs*$empRatePerHr))       #Calculate Salary



