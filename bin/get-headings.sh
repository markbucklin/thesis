#!/bin/bash

mdfile="$1"

sed -n '/^#.*\w$/p' "$mdfile"

sed -n '/^\(#\{1,6\}\) \(.*\)$/p' *.md

# or use look '# ' "$mdfile
# fd -t f -e md | xargs -r sed -n '/^#.*\w$/p'
