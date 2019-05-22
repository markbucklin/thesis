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

splitdraft-h1() {mkdir -p tmp/split
csplit -z --prefix="tmp/split/" --suffix-format='%03d.md' <(cat "$@") '/^# .*\w.*$/' {*} 1>tmp/char.count}

select-md-files() {
    FZFP="fzf $FZF_CTRL_T_OPTS"
    fd -t f -e md |
        {eval "$FZFP"}
}
