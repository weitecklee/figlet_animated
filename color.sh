#!/bin/bash

if ! [[ "$FPS" =~ ^[0-9]+$ ]] || [ "$FPS" -le 0 ]; then
  echo "Error: FPS must be a positive integer."
  exit 1
fi

DELAY=$(echo "scale=4; 1 / $FPS" | bc)
TEMP_FILE=$(mktemp)
figlet -c -f /usr/share/fonts/3d.flf $* > "$TEMP_FILE"

clear

printf "\033[?25l" # hide cursor

cleanup() {
  rm -f "$TEMP_FILE"
  printf "\033[?25h" # show cursor
  exit
}

trap cleanup INT TERM

i=0

while true; do
  printf "\033[H" # move cursor to (0, 0)
  lolcat -f -o "$i" "$TEMP_FILE"
  ((i++))
  if [ "$i" -gt 509 ]; then
    i=0
  fi
  sleep $DELAY
done