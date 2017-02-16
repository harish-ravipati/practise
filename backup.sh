#!/bin/bash

LOG_DIR='/home/devops/Training/Bash_Scripts/Scripts'
BACKUP_DIR='/home/devops/Training/Bash_Scripts/backup_Scripts'

mkdir -p $LOG_DIR

cp arguments.sh ifcond.sh samplescript.sh splvar.sh variables.sh  copyscript.sh multiple_inputs.sh userinput.sh $LOG_DIR

mkdir -p $BACKUP_DIR

for i in `cat Backup_Scripts.txt`; do

if [ -f $LOG_DIR/$i ];

then

echo "Copying $i to backup_Scripts"

cp $LOG_DIR/$i $BACKUP_DIR

fi

done


echo "Zipping Files"

echo 

echo

tar -czvf back_Scripts.tar.gz backup_Scripts

echo

echo

echo "Backup Completed"
 
