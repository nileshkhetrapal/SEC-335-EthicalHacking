#!/bin/bash
#Assigning values
subnet=$1
dns=$2
echo "dns resolution for $dns"
#looping ip from 1 to 254
for ip in $(seq 1 254); do
HOST="$subnet.$ip"
nslookup "$HOST" "$dns" | grep "name"
done
