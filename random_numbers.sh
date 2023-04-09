#!/bin/bash

# Check if an argument was passed
if [[ -z "$1" ]]; then
  echo "Usage: $0 <number>"
  exit 1
fi

# Store the number in a variable
n=$1

# Generate 100 combinations of digits 1 to n without repeating
for i in {1..100}; do
  # Create an array of digits from 1 to n
  digits=($(seq 1 $n))
  # Shuffle the array
  shuffled=($(echo "${digits[@]}" | tr ' ' '\n' | shuf | tr '\n' ' '))
  ##echo "${shuffled[@]:0:$n}"
	../push_swap "$(echo "${shuffled[@]:0:$n}")" | ../checker_linux "$(echo "${shuffled[@]:0:$n}")"
done

