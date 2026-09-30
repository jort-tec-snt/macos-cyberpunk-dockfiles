#!/bin/bash

PERCENT=$(pmset -g batt | grep -Eo '[0-9]+%' | head -1)

sketchybar --set "$NAME" label="$PERCENT"
