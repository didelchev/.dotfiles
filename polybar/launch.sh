#!/bin/bash

# Kill any running polybar instances
killall -q polybar

# Wait for them to shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 0.5; done

# Launch polybar
polybar main 2>&1 | tee -a /tmp/polybar.log & disown

echo "Polybar launched"