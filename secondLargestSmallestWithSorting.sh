#! /bin/bash

declare -a array

for(( k=0;k<10;k++ ))
do
        array[k]=$(( (RANDOM%900) + 100 ))

done

echo  "original array is " ${array[@]}
for(( i=0;i<${#array[@]}-1;i++ ))
do
	for (( j=0;j<${#array[@]}-1;j++ ))
	do
		if [ ${array[j]} -gt ${array[j+1]} ]
		then
			temp=${array[j+1]}
			array[j+1]=${array[j]}
			array[j]=$temp
		fi
	done
done
echo  "2nd largest element is " ${array[${#array[@]}-2]}
echo "2nd smallest element is " ${array[1]}
