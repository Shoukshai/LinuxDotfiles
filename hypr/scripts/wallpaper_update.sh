#! /bin/bash

WALL="$1"

hyprctl hyprpaper unload all
hyprctl hyprpaper preload "$WALL"
hyprctl hyprpaper wallpaper ",$WALL"

wallust run "$WALL"

pkill -SIGUSR2 waybar

