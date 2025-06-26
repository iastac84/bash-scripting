#!/bin/bash

# Loop through each line in the CSV
while IFS=',' read -r name age sex; do
  cp template.txt "$name.txt"
  sed -i '' \
    -e "s/NAME/$name/" \
    -e "s/AGE/$age/" \
    -e "s/SEX/$sex/" \
    "$name.txt"
  echo "Created $name.txt"
done < data.csv

