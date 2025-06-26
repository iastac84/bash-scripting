#!/bin/bash

while IFS=',' read -r name age sex; do
  safe_name=$(echo "$name" | tr ' ' '_' | tr -cd '[:alnum:]_')
  filename="${safe_name}.txt"
  cp template.txt "$filename"
  sed -i \
    -e "s/NAME/$name/" \
    -e "s/AGE/$age/" \
    -e "s/SEX/$sex/" \
    "$filename"
  echo "Created $filename for $name"
done < data.csv

