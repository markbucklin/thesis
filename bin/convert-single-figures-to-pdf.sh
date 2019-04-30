for f in *fig.md ; do ; cat <(echo "#### figure ($f)\n\n") "$f" | pandoc -s -o "$f.pdf" --filter=pandoc-crossref --filter=pandoc-citeproc - ; done
