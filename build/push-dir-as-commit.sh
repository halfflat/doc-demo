#!/bin/bash

# Construct commit object from contents of a subdirectory of working tree

where="$1"

if [ ! -d "$where" ]; then
    echo "'$where' not a directory" >&2
    exit 1
fi

# exit on error, but clean up temporary git index

set -e
tmpindex=$(mktemp)
function onexit {
    echo "deleting '$tmpindex'"
    if [ -n "$tmpindex" ]; then rm -f "$tmpindex"; fi
}
trap onexit EXIT

cd "$where"
gitrelpath=$(git rev-parse --show-prefix)

echo "woo! tmpindex is $tmpindex, repo relpath is $gitrelpath"









