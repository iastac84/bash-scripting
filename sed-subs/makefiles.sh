#!/bin/bash

# Loop through each line in the CSV
while IFS=',' read -r name age sex; do
  sed \
    -e "s/NAME/$name/" \
    -e "s/AGE/$age/" \
    -e "s/SEX/$sex/" \
    template.txt
  echo "---"
done < data.csv

