#!/bin/bash

# Define the number of loops
MAX_LOOPS=50
COUNT=1

while [ $COUNT -le $MAX_LOOPS ]
do
    echo "Starting Loop #$COUNT of $MAX_LOOPS at $(date)"
    
    # Run the synchronized lights script [cite: 77]
    #sudo python /home/pi/lightshowpi/py/synchronized_lights.py --playlist=/home/pi/lightshowpi/music/sample/.playlist
    
    # Universal increment syntax
    COUNT=$(expr $COUNT + 1)
    sleep 1
done

echo "50 Loops finished. Turning all lights ON indefinitely."

# Command to turn all lights on using hardware_controller
sudo python /home/pi/lightshowpi/py/hardware_controller.py --state=off