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

#Read Values From Dictionary

count=0
for i in "${addDict[@]}"
do
	#storing the dictionary values into the array
	arr[((count++))]=$i
done
#Print the array
echo "Array is ${arr[@]}"

#sorting the computational values decending order that result shows
for((i=0;i<4;i++))
do
	for((j = 0; j<4-i-1; j++))
	do
		if [ ${arr[j]} -lt ${arr[$((j+1))]} ]
		then
			temp=${arr[j]}
			arr[$j]=${arr[$((j+1))]}
			arr[$((j+1))]=$temp
		fi
	done
done
echo "Sorted Array decending order ${arr[*]}"
