#!/bin/bash

infile_path="$(realpath "$1")"
infile_name="$(basename $infile_path)"
infile_ext="odt"

basedir="${infile_path%"/$infile_name"}"
basefilename="${infile_name%".$infile_ext"}"

outfile_name="${infile_name%".odt"}.md"
outdir="${basedir}/content"
mkdir -p "$outdir"
workfile="draft.md"

figdir="${basedir}/fig"
mkdir -p "$figdir"
cd "$basedir"

echo "$infile_ext  $figdir  $infile_path $infile_name"

# ODT conversion to Markdown using pandoc
pandoc --from="$infile_ext" --to=markdown --extract-media="$figdir" --wrap=none --ascii --reference-links --atx-headers "$infile_path" >"$workfile"

# Keep everything after the # Introduction heading (replace with yaml-header and separate abstract if available)
cp "$workfile" tmp.md
sed -n '/^# Introduction/,$p' tmp.md >"$workfile"

# Remove sections after "Reference"
cp "$workfile" tmp.md
sed '/^# Reference/ q' tmp.md >$workfile

# Split Refernce and Figures to separate files
sed -n '/^# Reference/,$p' tmp.md | tee >(sed '/^# Figures/ q' >"${outdir}/ref.md") | sed -n '/^# Figures/,$p' >"${outdir}/figcaptions.md"

# In-Place replacement to remove ANCHORS
sed -i -r 's/\[\]\{\#anchor\-[0-9]\}//g' "$workfile"

# Convert endashes and emdashes (longer dashes) into the safe markdown format -- or ---, etc. (for use with 'smarty pants' extension??)
cp "$workfile" tmp.md
pandoc --from=markdown+smart --to=markdown-smart --wrap=none --atx-headers tmp.md | pandoc -f markdown-smart -t markdown+smart --wrap=none --atx-headers >"$workfile"

# Move main text to outfile

mv "$workfile" "${basedir}/content/${outfile_name}"

# clean up
rm tmp.md

# <sup>(([0-9]+)(((,[0-9]*)*)|(–[0-9]*)))</sup>
