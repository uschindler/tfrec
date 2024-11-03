#!/bin/dash
id=$1
temp=$2
hum=$3
lowbatt=$5
rssi=$6
ts=$8

topic="tfa-weatherhub/$id"
message="$temp $hum $lowbatt $rssi $ts"

exec /usr/bin/mosquitto_pub -u home -P lolifu -t "$topic" -r -m "$message"
