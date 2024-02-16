#!/bin/bash

TEAM_NAME="LUTON TOWN FC"

# Case sensitive MATCH
if [[ ${TEAM_NAME} =~ "Luton" ]]; then
    echo "MATCH - case sensitive"
else
    echo "NO MATCH - case sensitive"
fi

# Convert both the string and the pattern to lowercase for case-insensitive comparison with tr
pattern="LuToN"
if [[ $(echo "$TEAM_NAME" | tr '[:upper:]' '[:lower:]') =~ $(echo "$pattern" | tr '[:upper:]' '[:lower:]') ]]; then
    echo "MATCH - ignore case"
else
    echo "NO MATCH - ignore case"
fi
