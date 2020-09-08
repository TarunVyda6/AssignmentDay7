#! /bin/bash 

declare -a array
declare -a duplicate
counter=0
for(( k=0;k<10;k++ ))
do
        array[k]=$(( (RANDOM%100) ))
done
echo "original elements "${array[@]}
for (( i=0;i<10;i++ ))
do
        for(( j=$(( i+1 ));j<10;j++))
	do
        	if (( ${array[i]} == ${array[j]} ))
		then
                    	  duplicate[counter]=${array[j]}
                         (( counter++ ))
  		fi
	done
done

if ((${#duplicate[@]} ==0 ))
then
	echo "no duplicate elements"
else
	echo "duplicate elements "${duplicate[@]}
fi
