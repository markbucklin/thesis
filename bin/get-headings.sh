#!/bin/bash

mdfile="$1"

sed -n '/^#.*\w$/p' "$mdfile"


# fd -t f -e md | xargs -r sed -n '/^#.*\w$/p'
