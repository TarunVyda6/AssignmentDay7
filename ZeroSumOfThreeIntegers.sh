#! /bin/bash 

declare -a array

         array=(0 -1 2 -3 1)

status=0

for (( i=0;i<3;i++ ))
    do
        for (( j=$(( i++ ));j<4;j++ ))
        do
            for (( k=$(( j++ ));k<5;k++ ))
            do
                if (( $(( ${array[i]}+${array[j]}+${array[k]} )) == 0))
                then
                    echo ${array[i]}"(+)"${array[j]}"(+)"${array[k]}"="$(( ${array[i]}+${array[j]}+${array[k]} ))
		    status=1
                fi
            done
        done
      done
if (( $status == 0 ))
then
	echo "does not exist"
fi
