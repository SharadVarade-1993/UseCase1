#!/bin/bash -x

declare -A result
declare -a arithmetic

read -p "Enter the A value: " a
read -p "Enter the B value: " b
read -p "Enter the C value: " c

A=$(( $a +$b * $c ))

B=$(( $a * $b + $c ))

C=$(( $c + $b / $c ))

D=$(( $a % $b + $c ))


result[useCase2]=$A;

result[useCase3]=$B;

result[useCase4]=$C;

result[useCase5]=$D;


echo "Dictionary Key"  ${!result[@]}
echo "Dictionary Value" ${result[@]}

#Arrays values
counter=0
arithmetic[$counter]=${result[useCase2]}
arithmetic[$((++counter))]=${result[useCase3]}
arithmetic[$((++counter))]=${result[useCase4]}
arithmetic[$((++counter))]=${result[useCase5]}

echo "Array Index "${!arithmetic[@]}
echo "Array Value "${arithmetic[@]}


number=${#arithmetic[@]}
for (( i=0; i<$number; i++ ))
do
	for (( j=0; j<$number; j++ ))
	do
		if [ ${arithmetic[i]} -gt ${arithmetic[j]} ]
		then
			temp=${arithmetic[i]}
			arithmetic[$i]=${arithmetic[j]}
			arithmetic[$j]=$temp
		fi
	done
done
echo "sorting Descending"
echo ${arithmetic[@]}
echo ${!arithmetic[@]}

