#!/usr/bin/env bash

# Function to get the number of files in the current directory
function file_count {
  echo $(ls -1 | wc -l)
}

correct_count=$(file_count)

echo "Welcome to the Guessing Game!"
echo "Guess how many files are in the current directory:"

while true
do
  read guess
  if [[ $guess -eq $correct_count ]]
  then
    echo "Congratulations! You guessed correctly!"
    break
  elif [[ $guess -lt $correct_count ]]
  then
    echo "Your guess is too low. Try again:"
  else
    echo "Your guess is too high. Try again:"
  fi
done
