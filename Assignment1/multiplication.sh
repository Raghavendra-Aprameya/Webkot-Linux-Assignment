#! /bin/bash
echo "Enter a number:"
read n
echo "The multiplication table of $n is:"
for((i=1;i<=10;i++))
do
	echo -n "$n * $i =`expr $n \* $i`"
	echo ""
done

