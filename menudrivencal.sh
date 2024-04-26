#!/bin/bash

echo "ENTER 1st NUMBERS:"
read a
echo "ENTER 2nd NUMBERS:"
read b
i=1
while [ $i -eq 1 ]
do
	echo "!!!MENU!!!"
	echo "1.ADDITION OF $a AND $b"
	echo "2.SUBTRACTION OF $a AND $b"
	echo "3.MULTIPLICATION OF $a AND $b"
	echo "4.DIVISION OF $a AND $b"
	echo "5.EXPONENTIAL FUNCTION $a^$b"
	echo "6.EXIT"
	echo "ENTER YOUR CHOICE:"
	read choice
	case $choice in
	1)
		sum=`expr $a + $b`
		echo "SUM:"$sum
	;;
	2)
		diff=`expr $a - $b`
		echo "DIFFERENCE:"$diff
	;;
	3)
		pro=`expr $a \* $b`
		echo "PRODUCT:"$pro
	;;
	4)
		echo "DIVISION: $(echo "scale=2; $a/$b" | bc)"
	;;
	5)
		exp=1		
		for (( i=1 ; i <= b ; i++ ))
		do			
			exp=`expr $a \* $exp`
		done
		echo "$a^$b=$exp"
	;;
	6)
		break
	;;
	*)
		echo "WRONG ENTRY"