#!/usr/bin/env zsh


for d in "img"/*
do 
    figid="$(basename $d)" 
    printf '<div id="fig:%s">\n' "$figid"
    for f in "$d"/*
    do 
        subfigid="${"$(basename "$f" )"%".*"}"
        printf '![{{subfigcaption(%s)}}](%s){#fig:%s}\n\n' "$subfigid" "$f" "$subfigid" 
    done 
    printf '{{figcaption(%s)}}\n' "$figid"
    print '</div>\n\n'
done

