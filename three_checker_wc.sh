#!/bin/bash

while read line; do
  ../push_swap "$(echo $line)" | wc -l
done < three_digit_combinations
