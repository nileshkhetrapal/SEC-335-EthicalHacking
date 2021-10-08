#!/bin/bash
IP="$1"
PORT="$2"
OUTPUT="$3"
sudo nmap -open $IP.1-254 -p $PORT -oG - | awk '/Up$/{print $2}' > $OUTPUT.txt
sed -e 's/$/,'$PORT'/' -i $OUTPUT.txt
sed -i '1 i\ip,port' $OUTPUT.txt
cat $OUTPUT.txt
