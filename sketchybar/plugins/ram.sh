#!/bin/bash

PAGE_SIZE=$(pagesize)
ACTIVE=$(vm_stat | awk '/Pages active/ {gsub("\\.","",$3); print $3}')
WIRED=$(vm_stat | awk '/Pages wired down/ {gsub("\\.","",$4); print $4}')
COMPRESSED=$(vm_stat | awk '/Pages occupied by compressor/ {gsub("\\.","",$5); print $5}')

USED=$(( (ACTIVE + WIRED + COMPRESSED) * PAGE_SIZE / 1024 / 1024 / 1024 ))

sketchybar --set "$NAME" label="${USED}G"
