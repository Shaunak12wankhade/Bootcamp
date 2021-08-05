#!/bin/bash -x
n=1
while [ $n -le 12 ]
do
Result=$((RANDOM%2))
if [[ ${Result} -eq 0 ]]; then
 echo "HEADS"
elif [[ ${Result} -eq 1 ]]; then
 echo "TAILS"
 ((n++))
fi
done
