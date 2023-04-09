#!/bin/bash

while read line; do
  ../push_swap "$(echo $line)" | ../checker_linux "$(echo $line)"
done < three_digit_combinations
