#!/bin/bash -x
read -p "Enter the value to be converted" "Value"
Result=$(( $Value/12 ))
echo "The converted value is" $Result
