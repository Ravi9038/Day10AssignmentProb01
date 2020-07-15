#!/bin/bash -x

echo "Airthmatic Operation"

#Take input three fromm User UseCase 1

echo "Enter the Three Inputs from user"
read -p "Enter First Value : " firstNum
read -p "Enter the Second Number : " secNum
read -p "Enter the Third Number : " thirdNum

#computational Operations

operation1=$(($firstNum+$secNum*$thirdNum))
operation2=$(($firstNum*$secNum+$thirdNum))
operation3=$(($thirdNum+$firstNum/$secNum))
operation4=$(($firstNum%$secNum+$thirdNum))

#declare a dictionary
declare -A addDict
#store the Operations into the dictionary
addDict[count1]=$operation1
addDict[count2]=$operation2
addDict[count3]=$operation3
addDict[count4]=$operation4
echo "Operations storing into the dictionary : ${addDict[@]}"
