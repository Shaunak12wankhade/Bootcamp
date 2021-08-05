#!/bin/bash -x
No1=$((RANDOM%100+100))
No2=$((RANDOM%100+100))
No3=$((RANDOM%100+100))
No4=$((RANDOM%100+100))
No5=$((RANDOM%100+100))
No6=$((RANDOM%100+100))
No7=$((RANDOM%100+100))
No8=$((RANDOM%100+100))
No9=$((RANDOM%100+100))
No10=$((RANDOM%100+100))
Random_Numbers=("$No1" "$No2" "$No3" "$No4" "$No5" "$No6" "$No7" 
"$No8" "$No9" "$No10")
echo "${Random_Numbers[@]}"
biggest=${Random_Numbers[0]}
SecondBig=${Random_Numbers[0]}
Smallest=${Random_Numbers[0]}
Secondsmallest=${Random_Numbers[0]}
for i in ${Random_Numbers[@]}
do
 if [[ $i -gt $biggest ]]
 then
 SecondBig="$biggest"
 biggest="$i"
 fi
 if [[ $i -lt $Smallest ]]
 then
 Secondsmallest="$Smallest"
 Smallest="$i"
 fi
done
echo "The second largest number is $SecondBig"
echo "The second smallest number is $Secondsmallest"
