#!/usr/bin/env bash


src="$1"

# Chapters
cd build
# slfile="section_list.txt"

# echo /dev/null > "$slfile"
for f in ./*.md
 do
    printf '\nCHAPTER: %s\n' "${f%.md}"
    #grep -h -E '^#+\s*.*$' "$f" >> "$slfile"
    grep -h -E '^#+\s*.*$' "$f"
    markdown-toc --bullets='-' "$f" > "${f}.toc"
done
