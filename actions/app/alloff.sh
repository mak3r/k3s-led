#!/bin/sh

pin=$1

gpio mode 4 out
gpio mode 4 down
gpio write 4 0


gpio mode 5 out
gpio mode 5 down
gpio write 5 0


