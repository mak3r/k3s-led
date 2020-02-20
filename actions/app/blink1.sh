#!/bin/sh

pin=$1

gpio mode $pin out
gpio mode $pin down

while true; do
  if test -f "./terminate"; then
    echo "message to terminate received"
    break
  fi
  gpio write $pin 1
  sleep .0001
  gpio write $pin 0
  sleep 1
done

echo "Setting pin $pin low and terminating"
# set the pin low (led off)
gpio write $pin 0
