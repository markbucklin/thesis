fd . './src' -t f -e md | fzf-preview | xargs -r mv -u -t "$dest"
