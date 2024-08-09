#!/bin/bash

if ! [[ "$FPS" =~ ^[0-9]+$ ]] || [ "$FPS" -le 0 ]; then
  echo "Error: FPS must be a positive integer."
  exit 1
fi

DELAY=$(echo "scale=4; 1 / $FPS" | bc)
TEMP_FILE=$(mktemp)
figlet -c -f /usr/share/fonts/3d.flf "$*" > "$TEMP_FILE"

if [ $? -ne 0 ]; then
  rm -f "$TEMP_FILE"
  exit 1
fi

LINE_COUNT=$(wc -l < "$TEMP_FILE")

printf "\033[?25l" # hide cursor

cleanup() {
  rm -f "$TEMP_FILE"
  # Make sure cursor is below graphic
  printf "\033[%dB\033[G" "$LINE_COUNT"
  printf "\033[?25h" # show cursor
  exit
}

trap cleanup INT TERM EXIT

i=0

while true; do
  lolcat -f -o "$i" "$TEMP_FILE"
  ((i++))
  if [ "$i" -gt 509 ]; then
    i=0
  fi

  # Move cursor up by number of lines in TEMP_FILE then to beginning of current line
  printf "\033[%dA\033[G" "$LINE_COUNT"

  sleep $DELAY
done