touch abc.txt def.txt
ls
ls *.txt
for files in `ls *.txt`; do echo $files; done
for file in `ls *.txt`; do folderName=`echo $file | awk -F. '{print $1}'`; echo $folderName; done
for file in `ls *.txt`; do folderName=`echo $file | awk -F. '{print $1}'`; mkdir $folderName; cp $files $folderName; echo Copied $file to $folderName/; done
ls 
ls -p
ls -p abc/
ls -p def/






