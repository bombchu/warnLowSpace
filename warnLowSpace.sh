#!/bin/bash
IFS=$'\n'
myArray=($(df --output=avail /dev/sda[1-4]))
for ((i=1; i<5; i++))
do
    if [ ${myArray[$i]} -lt 49876 ]; then
        konsole --noclose -e df -h --output=avail /dev/sda[1-4]
    fi
done
unset IFS
