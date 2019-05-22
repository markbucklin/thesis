select-mv-files() {
    dest=${1:-selected}
    # if [ ${#@} -ge1]; then
    src=${2:-./}
    mkdir -p "$dest"
    files=($(fd . ${src} -t f -e md))
    print -l "${files[@]}" | fzf -m | xargs -r mv -u -v -t "$dest"
}

splitdraft() {mkdir -p tmp/split
csplit -z --prefix="tmp/split/" --suffix-format='%03d.md' <(cat "$@") '/^#.*\w.*$/' {*} 1>tmp/char.count}

splitdraft-h1() {
    mkdir -p tmp/split
    csplit -z --prefix="tmp/split/" --suffix-format='%03d.md' <(cat "$@") '/^# .*\w.*$/' {*} 1>tmp/char.count
}

select-md-files() {
    FZFP="fzf $FZF_CTRL_T_OPTS"
    fd -t f -e md |
        {eval "$FZFP"}
}
# make animated png
make-animated-png(){
    srcglob="${1}/*.png
    outname="${2}$(basename $1).png"
    ffmpeg -v verbose -f image2 -pattern_type glob -framerate 5 -i "$srcglob" -f apng -plays 0 -final_delay 0.2 "$outname"
}

