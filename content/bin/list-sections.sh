#!/usr/bin/env bash


# src="$1"

# Chapters
# cd build
# slfile="section_list.txt"

# echo /dev/null > "$slfile"
for f in "$@"
 do
    printf '\nFILE: %s\n' "${f%.md}"
    #grep -h -E '^#+\s*.*$' "$f" >> "$slfile"
    grep -h -E '^#+\s*.*$' "$f"
    markdown-toc --bullets='-' "$f" > "${f}.toc"
done

# fd -t f -e md | xargs markdown-toc --bullets='-'
