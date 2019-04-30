#!/usr/bin/env zsh

SRC="$1"
DEST="$2"


imgdirs=( $(find "$SRC" -type f -regex '.*\(png\|jpg\|gif\|svg\|eps\)' -print0 | xargs -0 -r dirname | uniq | sort ) )

for d in "${imgdirs[@]}"
do
    imgfiles=( $(find "$d" -type f -regex '.*\(png\|jpg\|gif\|svg\|eps\)' -print | sort ) )
    # todo: select imgfiles interactively

    # get number of figures in this folder -> combine multiple into figure with subfigures
    let n=${#imgfiles}

    # if (( n == 1 ))
    # then

    # fi

    # Get figure width from number of figures
    let fig_width_percent=$(( 100 / n ))

    # figure id from name of folder the figures are in
    fig_id="$(basename $d)"
    mdfig_open="$( printf '<!-- MDFIGINCLUDE(%s) -->\n' ${fig_id})"
    mdfig_close="$( printf '<!-- /MDFIGINCLUDE(%s) -->\n' ${fig_id})"

    # initialie string to write to file
    mdfig_filename="${fig_id}.fig.md"
    if [ -n "$DEST" ]; then
        [[ -e "$DEST" ]] || mkdir -p "$DEST"
        mdfig_path="$DEST/$mdfig_filename"
    else
            mdfig_path="./$mdfig_filename"
    fi


    # caption text for figure (figure title?)
    fig_caption=$( printf '{{ figcaption(%s) }}' ${fig_id} )

    # insert commented code to indicate how to include the generated markdown file
    markdownpp_include="$( printf '!INCLUDE %s' \"$mdfig_filename\")"
    mdinclude_include="$( printf '<!-- #include %s -->' \"$mdfig_filename\")"
    mustache_include="$( printf '{{ %s }}' "$mdfig_filename")"


    # using pandoc-crossref format for figures
    fig_open=$( printf "%s\n<div id=\"fig:%s\">" "$mdfig_open" "$fig_id")
    subfig_txt=()
    for f in "${imgfiles[@]}"
    do
        subfig_filepath="$f"
        subfig_filename="$(basename "$f" )"
        subfig_id="${fig_id}:${subfig_filename%.*}"
        subfig_caption="$( printf '{{ subfigcaption(%s) }}' "$subfig_id" )"
        subfig_width="${fig_width_percent}"
        # todo interactively approve caption or pause for editing (and subfig_width)

        subfig_txt+=( "$( printf '![%s](%s){#fig:%s width=%s%% }\n\n' "${subfig_id}" "${subfig_filepath}" "${subfig_id}" "${subfig_width}" )" )
    done
    fig_txt=$( printf '\n%s' "${subfig_txt[@]}" )
    fig_close=$( printf '\n%s\n</div>\n%s\n\n' "${fig_caption}" "${mdfig_close}" )

    # todo: allow edit
    txt=$( printf '%s\n%s\n%s\n' "$fig_open" "$fig_txt" "$fig_close")
    echo "$mdinclude_include"
    printf '%s\n' "$txt" > "$mdfig_path"

done



# | fzf ${FZF_CTRL_T_OPTS}
# for d in "$SRC/img"/*
# find img/ -type f -regex .*\(png\|jpg\|gif\|svg\|eps\)$ -fprint imagelist
# imdirs=( $(fd -t d | sort) )

# imgdirs=( $(find "$SRC" -type f -name '*.png' -o -name '*.jpg' -print | xargs dirname | uniq | sort | uniq -c ) )
# imgdirs=( $(find "$SRC" -type f -regex '.*\(png\|jpg\|gif\|svg\|eps\)' -print  | xargs dirname | uniq | sort | uniq -c ) )

        # alt="${subfig_id}"
        # ref="${subfig_filepath}"
        # id="fig:${subfig_id}"
