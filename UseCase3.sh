#!/bin/bash -x


A=$(( $a +$b * $c ))

B=$(( $a * $b + $c ))
C=$(( $c + $b / $c ))
D=$(( $a % $b + $c ))

result[UseCase1]=$A;
result[UseCase2]=$B;
result[UseCase3]=$C;
result[Usecase4]=$D;

echo "Use case2" ${result[A]}
echo "Use Case 3" ${result[B]}
echo "Use case 4" ${result[C]}
echo  "Use case 5"${result[D]}
