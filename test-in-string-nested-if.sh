#!/bin/bash

TEAM_NAME="LUTON TOWN FC"
SEARCH="Liverpool"
TIER=2


if [[ $(echo "$TEAM_NAME" | tr '[:upper:]' '[:lower:]') =~ $(echo "$SEARCH" | tr '[:upper:]' '[:lower:]') ]]; then
    echo "We are Luton Town"
else
    echo "We searched for $SEARCH"
    if [[ ${TIER} = 1 ]]; then
        echo "Tier 1"
    elif [[ ${TIER} = 2 ]]; then
        echo "Tier 2"
    elif [[ ${TIER} = 3 ]]; then
        echo "Tier 3"
    elif [[ ${TIER} = 4 ]]; then
        echo "Tier 4"
    fi
fi
