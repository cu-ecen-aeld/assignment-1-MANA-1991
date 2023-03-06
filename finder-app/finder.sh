#!/bin/sh
filesdir=$1
searchstr=$2

if [ -z $filesdir ] || [ -z $searchstr ] 
then
    echo "missing partameters"
    exit 1
elif [ ! -d $filesdir ]
then
    echo "dir not found"
    exit 1
else
    
    echo "The number of files are $(ls $filesdir | wc -l) and the number of matching lines are $(cat $filesdir/* | grep -c $searchstr)"
    exit 0
    

fi
