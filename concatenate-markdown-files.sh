#!/bin/bash

# setopt -s nullglob

# git checkout -b publish
targetdir="${PWD}/build"
if [ ! -d $targetdir ] 
then
    md -p $targetdir
fi
contentdir="$1"
srcdirs=( $(find "$contentdir" -mindepth 1 -maxdepth 2 -type d) )
for d in ${srcdirs[@]}
do 
    mdfiles=( $(echo "$d/*.md" | sort ) )
    if [ "${#mdfiles[@]}" -ge 1 ]
    then
        secname=$(basename "$d")
        cat "${mdfiles[@]}" > "${targetdir}/${secname}.md"
        # echo "${mdfiles[@]}"
        # echo $secname
        # echo $d
    fi
done 
