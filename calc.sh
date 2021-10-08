#!/bin/bash
echo "Welcome to this calculator program"
while [ true ]; do
echo "Enter your first number: (ctrl+c to quit)"
read num1
echo "Enter your second number:"
read num2
echo "Enter an operator (+,-,*,/):"
read op

case $op in
"+") echo "$num1 + $num2 = $(($num1 + $num2))";;
"-") echo "$num1 - $num2 = $(($num1 - $num2))";;
"*") echo "$num1 * $num2 = $(($num1 * $num2))";;
"/") if [ $num2 -ne 0 ]; then echo "$num1 / $num2 = $(($num1 / $num2))"; else echo "Cannot divide by 0!"; fi;;
*) echo "Invalid operator"
esac
done
