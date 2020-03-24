#! /bin/bash -x

# Program to findout Success Or failure Depending upon random value
function myfunc() {
  echo $1
}
result="$( myfunc $(( Random%2)) )"
if [ $result -eq 1 ]
then
  echo "success"
else
  echo "failure"
fi
