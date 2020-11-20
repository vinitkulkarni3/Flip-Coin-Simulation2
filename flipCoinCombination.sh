#!/bin/bash
#head or tail count and inserting it into dictionary

#2 percentage of head and tail
ranNum=$(($RANDOM%2+1))
for (( i=0; i<5; i++ ))
do
        ranNum=$(($RANDOM%2+1))
        if [ $ranNum == 1 ]
        then
                arrsingle[$i]=H
        else
                arrsingle[$i]=T
        fi
done


answer=0
temp=0
c=${#arrsingle[@]}
count1=0
count2=0
range=3
tempHead=H

echo "singlet Dictinary Elements are: "${arrsingle[@]}
echo ""
#counting head and tails
for (( i=0; i<5; i++ ))
do
        if [ ${arrsingle[$i]} == $tempHead ]
        then
                ((count1++))
        else
                ((count2++))
        fi
done

echo ""
echo "Head count  "$count1
echo "Tail count  "$count2
echo ""


echo ""
answ1=`echo - | awk '{print '$count1' / '$range'}'`
answ2=`echo - | awk '{print '$count2' / '$range'}'`

echo "Head% "$answ1
echo "Tail% "$answ2
echo ""
