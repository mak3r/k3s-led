#!/bin/sh

pin=$1

gpio mode $pin out
gpio mode $pin down

gpio write $pin 1
