#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config.ini
polybar main --config=~/.config/polybar/polybar-square/config.ini &

#polybar second --config=~/.config/polybar/polybar-square/config.ini &

echo "Polybar launched..."
