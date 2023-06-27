#!/bin/sh

# Where the state is stored
statefile=$XKBSWITCH_STATE
[ -z "$statefile" ] && statefile=state

# Where the keymaps are listed
listfile=$XKBSWITCH_LIST
[ -z "$listfile" ] && listfile=list

# Read variables
listlen=$(wc -l "$listfile" | cut -f1 -d' ')
state=$(cat "$statefile")

# Increment state
state=$((state + 1))
state=$((state % listlen))

# Set keymap
lineno=$((state + 1))
setxkbmap $(line $lineno from "$listfile")

# Save state
echo $state > "$statefile"
