#!/bin/bash

entry=''
while read line; do
    if [[ -z ${line} ]]; then
        echo "${entry}"
        entry=""
    else
        entry="${entry} ${line}"
    fi
done <"$1"

# ./ref-entries-to-single-line.sh cranial-window-refs.txt | sed -r 's/^\s*[0-9]+\.//g' | sed -r 's/\**//g' | sed -r 's/[^-.,:a-zA-Z0-9 ]/ /g' >ref-simple.txt

# while read line; do; url="$(printf %s%s "${gsprefix}" "$(print $line | tr ' ' '+')")"; echo "$url"; done < ref-simple.txt

# NOTE: no long necessary using the alternate pandoc odt or docx to markdown process which specifies --wrap=none
