#!/bin/bash -x
prime_number()
{
count=1
n=$1
 for ((n1=2; n1<=n ; n1++ ))
   do
     is_prime="yes"
     for(( i=2; i<n1; i++))
     do
      if [ $[n1%i] -eq 0 ] ; then
        is_prime="no"
         break
    fi
    done
if [ $is_prime = yes ] ; then
     prime_number[$count]=$(($n1))
  let "count +=1"
   fi
   done
}
read -p " enter n value to generate prime numbers :" n
prime_number $n
 echo " prime number between $n are ${prime_number[*]} "
