#!/bin/bash

declare -A arithmeticDictionary

read -p "ENTER THE VALU OF a :" a
read -p "ENTER THE VALU OF b :" b
read -p "ENTER THE VALU OF c :" c

problem1=$(( a + b * c ))
#echo "$problem1"
arithmeticDictionary["Problem1"]=$problem1

problem2=$(( a * b + c ))
#echo "$problem2"
arithmeticDictionary["Problem2"]=$problem2


uc4Temp=$(( c + a ))
problem3=$(( $uc4Temp / b ))
#echo "$problem3"
arithmeticDictionary["Problem3"]=$problem3


compute=$(( a % b ))
problem4=$(( $compute + c ))
#echo "$problem4"
arithmeticDictionary["Problem4"]=$problem4

echo "Printing Data From Dictionary"
echo "$arithmeticDictionary" ${arithmeticDictionary[@]}

#arithmeticArray[0]="Zara"
#echo "First Index: ${NAME[0]}"

#echo ".........................."
count=0

for key in ${!arithmeticDictionary[@]};
do
        arithmeticArray[$count]=${arithmeticDictionary[${key}]}
        count=$(( count + 1 ))
        #echo ${arithmeticArray[$count]}
done

echo "Printing from Array"
echo ${arithmeticArray[@]:0}



for ((i = 0; i<4; i++))
do
    for((j = 0; j<4-i-1; j++))
    do
        if [ ${arithmeticArray[j]} -gt ${arithmeticArray[$((j+1))]} ]
        then
            # swap
            temp=${arithmeticArray[j]}
            arithmeticArray[$j]=${arithmeticArray[$((j+1))]}
            arithmeticArray[$((j+1))]=$temp
        fi
    done
done

echo "Array in sorted order :"
echo ${arithmeticArray[*]}
