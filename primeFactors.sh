#! /bin/bash -x

declare -a array

number=24
counter=0
for (( i=2;i<$number;i++ )) 
do

        while [[ $(( $number%$i )) -eq 0 ]]
	do
		(( counter++ ))
            	array[counter]=$i
            	number=$(( $number/$i ))
         done
done
if(( $number > 2 ))
then
	(( counter++ ))
       	array[$counter]=$number
fi

echo ${array[@]}
