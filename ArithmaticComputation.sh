#!/bin/bash -x

declare -A DictResult


function DescendingSort(){
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
}

function AscendingSort(){
temp=0
for ((i=1; i<=${#ArrayResult[@]}; i++))
do
   for ((j=$(($i+1)); j<=${#ArrayResult[@]}; j++))
   do
      if [ ${ArrayResult[$i]} -gt ${ArrayResult[$j]} ]
      then
         temp=${ArrayResult[$i]}
         ArrayResult[$i]=${ArrayResult[$j]}
         ArrayResult[$j]=$temp
      fi
   done
done

echo "Array in Ascending Order : ${ArrayResult[@]}"
}


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

echo "values in Dictionary : $DictResult[@]}"


for ((i=1; i<=${#DictResult[@]}; i++))
do
	ArrayResult[$i]=${DictResult[$i]}
done

echo "value in Array : ${ArrayResult[@]}"

echo $(DescendingSort)

echo $(AscendingSort)
