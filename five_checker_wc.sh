#!/bin/bash

while read line; do
  ../push_swap "$(echo $line)" | wc -l
done < five_digit_combinations
