#!/usr/bin/env bash

if [ -f ".rsyncignore" ]; then

    rsync --exclude-from="$(pwd)/.rsyncignore" "$@"

else

    rsync  "$@"
fi
