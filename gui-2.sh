#!/bin/bash

trap 'rm -f "$tmpfile"' EXIT

# you can also double-click on a row to "install" it.

tmpfile=$(mktemp -p /dev/shm)
if output=$(yad \
--button='Exit!application-exit:1' \
--button='Exit and Install!system-run:0' \
--button="Install!system-run:/bin/sh -c \"cat $tmpfile >&2\"" \
--list \
--dclick-action="/bin/sh -c \"printf \%\s'\n' %s >&2\"" \
--select-action="/bin/sh -c \"printf \%\s'\n' %s >$tmpfile\"" \
--separator='\n' \
--center --width=800 --height=600 --title "apps4pi" \
--column "app name" --column "description" \
SimpleScreenRecorder "powerful feature packed yet simple and easy to use screen recorder" \
System-Tools "system maintanance commands all done for you"); then
    printf '%s\n' "$output" >&2
fi



