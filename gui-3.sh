#!/bin/bash

if output=$(yad \
--button='Exit!application-exit:1' \
--button='Install!system-run:0' \
--list \
--separator='\n' \
--center --width=800 --height=600 --title "apps4pi" \
--column "app name" --column "description" \
SimpleScreenRecorder "powerful feature packed yet simple and easy to use screen recorder" \
System-Tools "system maintanance commands all done for you"); then
    printf '%s\n' "$output" >&2
fi