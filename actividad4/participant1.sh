#!/bin/bash

while true; do
    read message < participant2_to_participant1
    echo "Fecha: $(date +"%Y-%m-%d %H:%M:%S") Participant 2: $message"

    read -p "Participant 1: " message
    echo "Fecha: $(date +"%Y-%m-%d %H:%M:%S") Participant 1: $message" > participant1_to_participant2
done