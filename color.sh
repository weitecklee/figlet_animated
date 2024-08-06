#!/bin/bash

output=$("$@")

IFS=$'\n' read -d '' -r -a lines <<< "$output"

for i in "${!lines[@]}"; do
  printf "\e[0;36m${lines[$i]}\e[0m\n"
done