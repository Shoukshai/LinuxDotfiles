#! /bin/bash

WALL_DIR="${HOME}/.config/wallpapers"
LAST_FILE="${HOME}/.config/awww/last_wall.txt"

mkdir -p "$(dirname "$LAST_FILE")"
touch "$LAST_FILE"

LAST=$(cat "$LAST_FILE")

mapfile -t WALLS < <(find "$WALL_DIR" -type f \( -iname 'screen*.png' -o -iname 'screen*.jpg' -o -iname 'screen*.jpeg' \) | sort)

if [[ ${#WALLS[@]} -eq 0 ]]; then
  echo "No wallpapers found in $WALL_DIR" >&2
  exit 1
fi

INDEX=-1
for i in "${!WALLS[@]}"; do
  if [[ "${WALLS[$i]}" == "$LAST" ]]; then
    INDEX=$i
    break
  fi
done

if (( INDEX == -1 )); then
  NEXT_INDEX=0
else
  NEXT_INDEX=$(( (INDEX + 1) % ${#WALLS[@]} ))
fi

NEXT="${WALLS[$NEXT_INDEX]}"

echo "$NEXT" > "$LAST_FILE"

awww img --transition-type wipe --transition-angle 45 --transition-duration 1 --transition-fps 244 "$NEXT"

~/.config/hypr/scripts/wallpaper_update.sh "$NEXT"

