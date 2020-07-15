#!/bin/bash -x

echo "Airthmatic Operation"

#Take input three fromm User UseCase 1

echo "Enter the Three Inputs from user"
read -p "Enter First Value : " firstNum
read -p "Enter the Second Number : " secNum
read -p "Enter the Third Number : " thirdNum

#computational operations Performing Usecase2

operation1=$(($firstNum+$secNum*$thirdNum))
echo "Opertations $operation1"

#computational operations Performing Usecase3
operation2=$(($firstNum*$secNum+$thirdNum))
echo "Use Case Operation2 = $operation2"
