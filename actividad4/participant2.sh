#!/bin/bash

while true; do
    read -p "Participant 2: " message
    echo "$message" > participant2_to_participant1

    read message < participant1_to_participant2
    echo "$message"
done