#!/bin/bash


#Sat sept  2 09:57:06 UTC 2023

#variables 

BASE=/home/ubuntu/files
DEPTH=1
RUN=0


#check  if the directory is present or not !

if [ ! -d $BASE ] 
then
	echo "directory does not exist :$BASE"
	exit 1
fi

#Create 'archive' directory if not present

if [ ! -d $BASE/archive ]
then
        mkdir archive
fi

#Find the list of files which is larger than 20MB
for i in `find $BASE -maxdepth $DEPTH -type f -size +20M `
do
	if [ $Run -eq 0 ]
	then
		echo "[$(date "+%Y-%m-%d  %H:%M:%S")] archiving $i ==> $BASE/archive "
		gzip $i || exit 1
		mv $i.gz $BASE/archive || exit 1
	
	fi

done
