#!/bin/bash

echo "..................UC1...................."
number=$((1+RANDOM % 2));

if [ $number == 1 ]
then
        echo "Head"
else
        echo "Tail"
fi

echo "..............UC2......................."
HeadCount=0
TailCount=0
for((i=1;i<=100;i++))
{
        number=$((1+RANDOM % 2));
        if [ $number == 1 ]
        then
                HeadCount=$(( HeadCount + 1 ))
        else
                TailCount=$(( TailCount + 1 ))
        fi
}
echo "Head Count ; $HeadCount"
echo "Tail Count : $TailCount"

tempPercentage=$(( 100 * $HeadCount ))
HeadPercentage=$(( tempPercentage / 100 ))
echo "Head Percentage : $HeadPercentage %"

tempPercentage1=$(( 100 * $TailCount ))
TailPercentage=$(( tempPercentage1 / 100 ))
echo "Tail Percentage : $TailPercentage %"


echo "..............UC3......................."
HHCount=0
HTCount=0
TTCount=0
THCount=0

for((i=1;i<=100;i++))
{
        number1=$((1+RANDOM % 2));
        number2=$((1+RANDOM % 2));
        #echo "number 1 : $number1"
        #echo "number 2: $number2"
        if [ $number1 == 1 ] && [ $number2 == 1 ]
        then
                HHCount=$(( HHCount + 1 ))
        elif [ $number1 == 1 ] && [ $number2 == 2 ]
        then
                HTCount=$(( HTCount + 1 ))
        elif [ $number1 == 2 ] && [ $number2 == 1 ]
        then
                THCount=$(( THCount + 1 ))
        elif [ $number1 == 2 ] && [ $number2 == 2 ]
        then
                TTCount=$(( TTCount + 1 ))

        fi
}
echo "HH Count ; $HHCount"
echo "HT Count : $HTCount"
echo "TH Count ; $THCount"
echo "TT Count : $TTCount"

tempPercentage=$(( 100 * $HHCount ))
HHPercentage=$(( tempPercentage / 100 ))
echo "HH Percentage : $HHPercentage %"

tempPercentage1=$(( 100 * $HTCount ))
HTPercentage=$(( tempPercentage1 / 100 ))
echo "HT Percentage : $HTPercentage %"

tempPercentage=$(( 100 * $THCount ))
THPercentage=$(( tempPercentage / 100 ))
echo "TH Percentage : $THPercentage %"

tempPercentage1=$(( 100 * $TTCount ))
TTPercentage=$(( tempPercentage1 / 100 ))
echo "TT Percentage : $TTPercentage %"



echo "..............UC4......................."
HHHCount=0
HHTCount=0
HTHCount=0
TTHCount=0
THTCount=0
HTTCount=0
THHCount=0
TTTCount=0

for((i=1;i<=100;i++))
{
        number1=$((1+RANDOM % 2));
        number2=$((1+RANDOM % 2));
        number3=$((1+RANDOM % 2));

        #echo "number 1 : $number1"
        #echo "number 2: $number2"
        if [ $number1 == 1 ] && [ $number2 == 1 ] && [ $number3 == 1 ]
        then
                HHHCount=$(( HHHCount + 1 ))
        elif [ $number1 == 1 ] && [ $number2 == 1 ] && [ $number3 == 2 ]
        then
                HHTCount=$(( HHTCount + 1 ))
        elif [ $number1 == 1 ] && [ $number2 == 2 ] && [ $number3 == 1 ]
        then
                HTHCount=$(( HTHCount + 1 ))
        elif [ $number1 == 2 ] && [ $number2 == 2 ] && [ $number3 == 1 ]
        then
                TTHCount=$(( TTHCount + 1 ))
        elif [ $number1 == 2 ] && [ $number2 == 1 ] && [ $number3 == 2 ]
        then
                THTCount=$(( THTCount + 1 ))
        elif [ $number1 == 1 ] && [ $number2 == 2 ] && [ $number3 == 2 ]
        then
                HTTCount=$(( HTTCount + 1 ))
        elif [ $number1 == 2 ] && [ $number2 == 1 ] && [ $number3 == 1 ]
        then
                THHCount=$(( THHCount + 1 ))
        elif [ $number1 == 2 ] && [ $number2 == 2 ] && [ $number3 == 2 ]
        then
                TTTCount=$(( TTTCount + 1 ))
        fi

}
echo "HHH Count ; $HHHCount"
echo "HHT Count : $HHTCount"
echo "HTH Count ; $HTHCount"
echo "TTH Count : $TTHCount"
echo "THT Count ; $THTCount"
echo "HTT Count : $HTTCount"
echo "THH Count ; $THHCount"
echo "TTT Count : $TTTCount"

tempPercentage=$(( 100 * $HHHCount ))
HHHPercentage=$(( tempPercentage / 100 ))
echo "HHH Percentage : $HHHPercentage %"

tempPercentage1=$(( 100 * $HHTCount ))
HHTPercentage=$(( tempPercentage1 / 100 ))
echo "HHT Percentage : $HHTPercentage %"

tempPercentage=$(( 100 * $HTHCount ))
THPercentage=$(( tempPercentage / 100 ))
echo "HTH Percentage : $HTHPercentage %"

tempPercentage1=$(( 100 * $TTHCount ))
TTHPercentage=$(( tempPercentage1 / 100 ))
echo "TTH Percentage : $TTHPercentage %"


tempPercentage=$(( 100 * $THTCount ))
THTPercentage=$(( tempPercentage / 100 ))
echo "THT Percentage : $THTPercentage %"

tempPercentage1=$(( 100 * $HTTCount ))
HTTPercentage=$(( tempPercentage1 / 100 ))
echo "HTT Percentage : $HTTPercentage %"

tempPercentage=$(( 100 * $THHCount ))
THHPercentage=$(( tempPercentage / 100 ))
echo "THH Percentage : $THHPercentage %"

tempPercentage1=$(( 100 * $TTTCount ))
TTTPercentage=$(( tempPercentage1 / 100 ))
echo "TTT Percentage : $TTTPercentage %"
