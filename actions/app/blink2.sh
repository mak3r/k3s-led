#!/bin/sh

pin=$1

gpio mode $pin out
gpio mode $pin down

while true; do
  if test -f "./terminate"; then
    echo "message to terminate received"
    break
  fi
  for i in {1..3}; do
    gpio write $pin 1
    sleep .1
    gpio write $pin 0
    sleep .01
  done
  sleep 1.5
done

echo "Setting pin $pin low and terminating"
# set pin $pin low and terminate
gpio write $pin 0
