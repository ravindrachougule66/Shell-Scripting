#!/bin/bash

# Initialize the starting number

num=2

# Loop through numbers from 2 to 20
while [[ $num -le 20 ]]
do
    # Print the current even number
    echo $num
    # Increment by 2 to get the next even number
    num=$(( num + 2 ))
done

