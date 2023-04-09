#!/bin/bash

## ./push_swap "$(sed -n '3p' five_digit_combinations)" 

while read line; do
  ../push_swap "$(echo $line)" | ../checker_linux "$(echo $line)"
	#echo $line
done < five_digit_combinations
