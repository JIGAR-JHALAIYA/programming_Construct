#!/bin/bash

echo "...........UC1..........."
number=$((1+RANDOM % 2));
if [ $number == 1 ]
then
        echo "Head"
else
        echo "Tail"
fi

echo "............UC2..............."
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
echo "Total Head Count : $HeadCount"
echo "Total Tail Count : $TailCount"

if [ $HeadCount -gt $TailCount ]
then
        echo "Head Won"
else
        echo "Tail Won"
fi

echo ".................UC3................."
HeadCount=0
TailCount=0
for((i=1;i<=100;i++))
{
        number=$((1+RANDOM % 2));
        if [ $number == 1 ]
        then
                HeadCount=$(( HeadCount + 1 ))
                if [ $HeadCount == 21 ]
                then
                        break
                fi
        else
                TailCount=$(( TailCount + 1 ))
                if [ $TailCount == 21 ]
                then
                        break
                fi

        fi
}
echo "Total Head Count : $HeadCount"
echo "Total Tail Count : $TailCount"

if [ $HeadCount -gt $TailCount ]
then
        echo "Head Won"
else
        echo "Tail Won"
fi
