#!/bin/bash

PROFILE_OUTPUT_FILE="$1"
shift 1
exec time -a -o "$PROFILE_OUTPUT_FILE" -f 'elapsed=%e user=%U system=%S argv="%C"' "$@"
