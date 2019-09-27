#!/bin/sh

pin=$1

gpio mode $pin out
gpio mode $pin down

while true; do
  gpio write $pin 1
  sleep .0001
  gpio write $pin 0
  sleep 1
done
