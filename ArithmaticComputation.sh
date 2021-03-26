#!/bin/bash -x

echo "Enter three inputs"
read a b c
echo $a $b $c

firstCompute=$(($a+$b*$c))
