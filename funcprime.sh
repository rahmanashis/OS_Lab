#!/bin/zsh

check_prime()
{
    local num=$1

    if (( num < 2 )); then
        echo "$num is not a prime number."
        return
    fi

    for (( i=2; i*i<=num; i++ ))
    do
        if (( num % i == 0 )); then
            echo "$num is not a prime number."
            return
        fi
    done

    echo "$num is a prime number."
}

if (( $# == 0 )); then
    echo "Please input one or more numbers."
    exit 1
fi

for num in "$@"
do
    check_prime "$num"
done
