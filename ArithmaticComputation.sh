#!/bin/bash -x

declare -A DictResult

echo "Enter three inputs"
read a b c
echo $a $b $c

firstCompute=$(($a+$b*$c))

secondCompute=$(($a*$b+$c))

thirdCompute=$(($c+$a/$b))

fourthCompute=$(($a%$b+$c))

DictResult[1]=$firstCompute
DictResult[2]=$secondCompute
DictResult[3]=$thirdCompute
DictResult[4]=$fourthCompute

echo ${DictResult[@]}


for ((i=1; i<=${#DictResult[@]}; i++))
do
	ArrayResult[$i]=${DictResult[$i]}
done

echo ${ArrayResult[@]}
