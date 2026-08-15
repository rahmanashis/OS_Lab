
#!/usr/bin/env bash
# Simple conditionals with numbers and strings

# Declare number variable
num=10
num2=5

# Declare string variable
name="John"
greeting="Hello"

# Simple if statement - number comparison
echo "--- Number Comparison ---"
if [ "$num" -gt "$num2" ]; then
    echo "$num is greater than $num2"
fi

# Simple if statement - string comparison
echo ""
echo "--- String Comparison ---"
if [ "$name" = "John" ]; then
    echo "Name is $name"
fi

# If-else with numbers
echo ""
echo "--- If-Else with Numbers ---"
age=25
if [ "$age" -gt 18 ]; then
    echo "Adult: $age years old"
else
    echo "Minor: $age years old"
fi

# If-else with strings
echo ""
echo "--- If-Else with Strings ---"
status="active"
if [ "$status" = "active" ]; then
    echo "Status is $status"
else
    echo "Status is not active"
fi
echo "6) Nested conditionals"
x=3
if [ "$x" -gt 0 ]; then
	if [ "$x" -lt 5 ]; then
		echo "x is between 1 and 4"
	fi
fi

echo
echo "7) case statement (alternative to multiple elif)"
opt="start"
case "$opt" in
	start)
		echo "starting..." ;;
	stop)
		echo "stopping..." ;;
	*)
		echo "unknown option" ;;
esac

echo
echo "Done. These are compact examples to practice Bash conditionals."
