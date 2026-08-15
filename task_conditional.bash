#!/usr/bin/env bash

# # OLD CODE - COMMENTED OUT
# # Read number
# echo "Enter a number:"
# read num
# 
# # Compare number
# echo ""
# echo "Number comparisons:"
# if [ "$num" -gt 5 ]; then
#     echo "$num is greater than 5 (-gt)"
# fi
# 
# if [ "$num" -lt 5 ]; then
#     echo "$num is less than 5 (-lt)"
# fi
# 
# if [ "$num" -eq 5 ]; then
#     echo "$num equals 5 (-eq)"
# fi
# 
# # Read string
# echo ""
# echo "Enter a string:"
# read str
# 
# # Compare string
# echo ""
# echo "String comparisons:"
# if [ "$str" = "Ashis Rahman" ]; then
#     echo "String equals 'Ashis Rahman' (=)"
# fi
# 
# if [ "$str" != "Ashis Rahman" ]; then
#     echo "String does not equal 'Ashis Rahman' (!=)"
# fi
# 
# if [ -z "$str" ]; then
#     echo "String is empty (-z)"
# fi

# ===== NEW TASKS =====

# Task 1: Compare x=DIU variable with if/elif
echo "Task 1: Compare DIU variable"
x="DIU"
if [ "$x" = "DIU" ]; then
    echo "Yes - x is DIU"
elif [ "$x" = "DU" ]; then
    echo "Yes - x is DU"
else
    echo "No - x is not DIU or DU"
fi

# Task 2: Check if number is in range (>0 AND <=100) using AND operator (&&)
echo ""
echo "Task 2: Check range with AND operator (>0 && <=100)"
a=10
if [ "$a" -gt 0 ] && [ "$a" -le 100 ]; then
    echo "Yes - $a is in range (0-100)"
else
    echo "No - $a is NOT in range"
fi

# Task 3: Same check with OR operator (||)
echo ""
echo "Task 3: Check with OR operator (less than 5 OR greater than 95)"
if [ "$a" -lt 5 ] || [ "$a" -gt 95 ]; then
    echo "Yes - $a is less than 5 OR greater than 95"
else
    echo "No - $a is between 5 and 95"
fi

# Task 4: Check if string starts with 'b' (like Bangladesh)
echo ""
echo "Task 4: Check if string starts with 'b'"
country="Bangladesh"
if [[ "$country" =~ ^[bB] ]]; then
    echo "Yes - $country starts with 'b'"
else
    echo "No - $country does not start with 'b'"
fi
