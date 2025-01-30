#! /bin/sh
echo "Enter your first number:"
read a
echo "Enter your second number:"
read b
b=$((a+b))
a=$((b-a))
b=$((b-a))
echo "The swapped numbers are:"
echo $a
echo $b
