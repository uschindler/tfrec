#!/bin/dash
id=$1
temp=$2
hum=$3
lowbatt=$5
rssi=$6

topic="tfa-weatherhub/$id"
message="$temp $hum $lowbatt $rssi"

exec /usr/bin/mosquitto_pub -u home -P lolifu -t "$topic" -m "$message"
