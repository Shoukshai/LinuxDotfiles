#!/bin/bash
WALL_FILE="$HOME/.config/awww/last_wall.txt"

if [ -f "$WALL_FILE" ]; then
    WALL="$(cat "$WALL_FILE")"
    wallust run "$WALL" --colorspace lchmixed >/dev/null 2>&1
    awww img "$WALL"
fi
