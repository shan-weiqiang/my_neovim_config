#!/bin/bash

# Define variables
greeting="Hello"
name="World"

# Use variables in a command
echo "${greeting}, ${name}!"

# Conditional statement
if [ "${name}" == "World" ]; then
  echo "You are in the world!"
else
  echo "You are not in the world!"
fi

# Loop
for i in {1..5}; do
  echo "Count: ${i}"
done

# Function
function say_hello() {
  echo "Hello from a function!"
}

# Call the function
say_hello

