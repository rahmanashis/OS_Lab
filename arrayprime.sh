#!/bin/zsh

numbers=(12 7 28 13 45 2 90 19 1 100)

echo "Array elements: ${numbers[@]}"
echo "Prime numbers are:"

for num in "${numbers[@]}"
do
    if (( num < 2 )); then
        continue
    fi

    is_prime=1

    for (( i=2; i*i<=num; i++ ))
    do
        if (( num % i == 0 )); then
            is_prime=0
            break
        fi
    done

    if (( is_prime == 1 )); then
        echo "$num"
    fi
done
