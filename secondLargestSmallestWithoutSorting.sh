#! /bin/bash

declare -a array
for(( k=0;k<10;k++ ))
do
        array[k]=$(( (RANDOM%900) + 100 ))
done


echo  "original array is " ${array[@]}

largest=${array[0]}
secondlargest=${array[1]}
smallest=${array[0]}
secondsmallest=${array[1]}

for (( i=2;i<${#array[@]};i++ ))
do
	if (( $largest < ${array[i]} ))
	then
		secondlargest=$largest
		largest=${array[i]}
	elif (( $secondlargest < ${array[i]} ))
	then
		secondlargest=${array[i]}
	fi

	if (( $smallest > ${array[i]} ))
        then
                secondsmallest=$smallest
                smallest=${array[i]}
        elif (( $secondsmallest > ${array[i]} ))
        then
                secondsmallest=${array[i]}
        fi

done

echo "2nd largest element is " $secondlargest
echo "2nd smallest element is " $secondsmallest
