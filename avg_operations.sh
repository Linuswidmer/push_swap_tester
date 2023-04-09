#!/bin/bash

# Initialize variables
sum=0
count=0

# Read the file line by line and add up the numbers
while read line; do
  sum=$((sum+line))
  count=$((count+1))
done < tmpfile

# Compute the mean
mean=$(echo "scale=2; $sum/$count" | bc)

# Print the mean
echo "Avg. operations to sort: $mean"
