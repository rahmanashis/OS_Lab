#!/bin/zsh

num=(12 28 45 78 78 90 90 56 28 3 14 100)

echo "array elements: ${num[@]}"

first=0
second=0

for n in "${num[@]}"
do
    if (( n > first )); then
        second=$first
        first=$n
    elif (( n > second && n != first )); then
        second=$n
    fi
done

echo "highest element is: $first"
echo "second highest element is: $second"
