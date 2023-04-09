#!/bin/bash

## ./push_swap "$(sed -n '3p' five_digit_combinations)" 

while read line; do
  ../push_swap "$(echo $line)" | wc -l
	echo $line
done < four_digit_combinations
