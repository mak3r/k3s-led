#General Usage
Deploy the container and it will run the off.sh script and turn off wiringpi pin #5 with no arguments.

## Arguments
- ARG1 is the name of the script to run
    - off.sh - turn off the LED. Use this with a kubernetes job
    - on.sh - solid on. Use this with a kubernetes job
    - blink1.sh - blink option 1. Use this with a kubernetes deployment
    - blink2.sh - blink option 2. Use this with a kubernetes deployment
    - alloff.sh - turn of pin #4 and pin #5 (currently the only 2 LEDs supported by this app). Use this with a kubernetes job

- ARG2 is the wiringpi pin # of the LED to affect
 
## Notes:
- The base image is mak3r/wiringpi:buster
- all functionality is performed using the gpio utility
 
