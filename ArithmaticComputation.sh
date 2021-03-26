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

temp=0
for ((i=1; i<=${#ArrayResult[@]}; i++))
do
   for ((j=$(($i+1)); j<=${#ArrayResult[@]}; j++))
   do
      if [ ${ArrayResult[$i]} -lt ${ArrayResult[$j]} ]
      then
         temp=${ArrayResult[$i]}
         ArrayResult[$i]=${ArrayResult[$j]}
         ArrayResult[$j]=$temp
      fi
   done
done

echo "Array in Descending Order : ${ArrayResult[@]}"
