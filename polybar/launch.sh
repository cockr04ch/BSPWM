#!/bin/bash

#polybar-msg cmd quit

killall -q polybar

#Launch mybar
polybar mybar 2>&1 | tee -a /tmp/polybar.log & disown

echo "Bar launched..."
echo "==============================="
