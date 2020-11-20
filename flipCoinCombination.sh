#!/bin/bash
#head or tail count and inserting it into dictionary

#1 generating head or tail
ranNum=$(($RANDOM%2+1))
if [ $ranNum == 1 ]
then
	echo "Head"
else
        echo "Tail"
fi
