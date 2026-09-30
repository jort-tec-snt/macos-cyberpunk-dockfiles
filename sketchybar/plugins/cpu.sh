#!/bin/bash

CPU=$(top -l 1 | awk '/CPU usage/ {print int($3 + $5)}')

sketchybar --set "$NAME" label="${CPU}%"
