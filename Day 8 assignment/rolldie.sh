#!/bin/bash -x
num=1
one=0
two=0
three=0
four=0
five=0
six=0

declare -A die

while [ $num -ne 0  ]
do
ran=$((RANDOM%6+1))
if [ $ran -eq 1 ]
then
die[one]=$ran;
((one++))

if [ $one -eq 10 ]
then
echo ${die[one]} "wins"
num=0
fi

elif [ $ran -eq 2 ]
then
die[two]=$ran;
((two++))

if [ $two -eq 10 ]
then 
echo ${die[two]} "wins"
num=0
fi

elif [ $ran -eq 3 ]
then
die[three]=$ran;
((three++))
if [ $three -eq 10 ]
then
echo ${die[three]} "wins"
num=0
fi

elif [ $ran -eq 4 ]
then
die[four]=$ran;
((four++))
if [ $four -eq 10 ]
then 
echo ${die[four]} "wins"
num=0
fi

elif [ $ran -eq 5 ]
then
die[five]=$ran;
((five++))
if [ $five -eq 10 ]
then
echo ${die[five]} "wins"
num=0
fi

elif [ $ran -eq 6 ]
then
die[six]=$ran;
((six++))
if [ $six -eq 10 ]
then 
echo ${die[six]} "wins"
num=0
fi

fi

done
