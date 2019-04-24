#!/usr/bin/env bash



# Chapters
cd build
slfile="section_list.txt"
echo /dev/null > "$slfile"
for f in ./*.md
 do
    printf '\nCHAPTER: %s\n' "${f%.md}" >> "$slfile"
    grep -h -E '^#+\s*.*$' "$f" >> "$slfile"
    markdown-toc --bullets='-' "$f" > "${f}.toc"
done
