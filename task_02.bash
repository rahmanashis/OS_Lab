#!/usr/bin/env bash
# Grading system - read mark and display grade

# Read mark with prompt
read -p "Enter a mark: " mark

# Check if mark is valid (0-100)
if [ "$mark" -ge 0 ] && [ "$mark" -le 100 ]; then
    echo "Valid"
    
    # Check grade based on mark range
    if [ "$mark" -lt 40 ]; then
        echo "Failed"
    elif [ "$mark" -ge 40 ] && [ "$mark" -lt 50 ]; then
        echo "D"
    elif [ "$mark" -ge 50 ] && [ "$mark" -lt 70 ]; then
        echo "C"
    elif [ "$mark" -ge 70 ] && [ "$mark" -lt 80 ]; then
        echo "A"
    elif [ "$mark" -ge 80 ] && [ "$mark" -le 100 ]; then
        echo "A+"
    fi
else
    echo "Invalid - mark must be between 0-100"
fi
