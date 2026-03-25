#! /bin/bash
WALL="$1"

wallust run "$WALL" --colorspace lchmixed

# pkill -SIGUSR2 waybar

