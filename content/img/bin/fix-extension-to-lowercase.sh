#!/bin/bash


# find $1 -name '*.png' -o -name '*.JPG' -o -name '*.TIF' -exec sh -c 'a=$(echo "$0" | sed -r "s/([^.]*)\$/\L\1/"); [ "$a" != "$0" ] && mv "$0" "$a" ' {} \;


find $1 -type f -name '*.png' -print0 | \
while read -d $'\0' f; do mv -v "$f" "${f/.png/.png}"; done

find $1 -type f -name '*.TIF' -print0 | \
while read -d $'\0' f; do mv -v "$f" "${f/.TIF/.tif}"; done

find $1 -type f -name '*.JPG' -print0 | \
while read -d $'\0' f; do mv -v "$f" "${f/.JPG/.jpg}"; done
