#!/bin/bash
#head or tail count and inserting it into dictionary

declare -A arrsingle
declare -A arrdouble
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




#2d dictonary
for (( i=0; i<4; i++ ))
do
        for (( j=0; j<4; j++ ))
        do
                ranNum=$(($RANDOM%2+1))
                if [ $ranNum == 1 ]
                then
                        arrdouble[$i,$j]='HEAD'
                else
                        arrdouble[$i,$j]='TAIL'
                fi
        done
done

echo "Doublet Dictinary Elements are: "${arrdouble[@]}
HHcount=0
HTcount=0
THcount=0
TTcount=0

a=HEAD
b=TAIL

for (( i=0; i<4; i++ ))
do
        for (( j=0; j<4; j++ ))
        do
                temp=${arrdouble[$i,$j]}
                if [ $temp == $a ] && [ $temp == $a ]
                then
                        ((HHcount++))
                elif [ $temp == $a ] && [ $temp == $b ]
                then
                        ((HTcount++))
                elif [ $temp == $b ] && [ $temp == $a ]
                then
                        ((THcount++))
                else
                        ((TTcount++))
                fi
        done
done

echo ""
echo "HH count "$HHcount
echo "HT count "$HTcount
echo "TH count "$THcount
echo "TT count "$TTcount


range1=${#arrdouble[@]}
answer1=`echo - | awk '{print '$HHcount' / '$range1'}'`
answer2=`echo - | awk '{print '$HTcount' / '$range1'}'`
answer3=`echo - | awk '{print '$THcount' / '$range1'}'`
answer4=`echo - | awk '{print '$TTcount' / '$range1'}'`

echo ""
echo "HH% "$answer1
echo "HT% "$answer2
echo "TH% "$answer3
echo "TT% "$answer4

