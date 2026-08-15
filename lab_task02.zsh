#!/bin/zsh

num=28
sum=0

echo "Number is: $num"

for (( i=1; i<num; i++ ))
do
    if (( num % i == 0 )); then
        sum=$((sum + i))
    fi
done

if (( sum == num )); then
    echo "$num is a perfect number."
else
    echo "$num is not a perfect number."
fi
