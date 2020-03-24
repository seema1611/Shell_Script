nano -T HelloWorld.java
javac HelloWorld.java
ls -l
java HelloWorld &
ps -elf | grep java | grep -v grep
ps -elf | grep java | grep -v grep | awk '{ print $2 }'
kill -9 ps -elf | grep java | grep -v grep | awk '{ print $2 }' 
echo Hello Tom
echo Hello Tom | awk '{ print $0 }'
echo Hello Tom | awk '{ print $2 }'
echo Hello Tom | awk '{ $2 ="Seema" } { print $0 }'
cd linux-content
cat data.csv
cat data.csv | grep CAPTAIN | awk '{ print $2 " " $4}'
cat data.csv | grep CAPTAIN | awk '{ sum+=$4 }END{ print sum }'
cat data.csv | grep CAPTAIN | awk '{ sum+=$4 }END{ print sum/NR }'




