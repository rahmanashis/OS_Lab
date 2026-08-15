#!/bin/zsh

# Define number
check_number=28

echo "Number is: $check_number"

# Task 3: Check if the number is perfect or not
sum=0
divisors=()

for ((i = 1; i < check_number; i++))
do
    if (( check_number % i == 0 )); then
        sum=$((sum + i))
        divisors+=($i)
    fi
done

echo "Proper divisors are: ${divisors[@]}"
echo "Sum of proper divisors is: $sum"

if [ "$sum" -eq "$check_number" ]; then
    echo "$check_number is a perfect number."
else
    echo "$check_number is not a perfect number."
fi
