#!/bin/bash

pandoc                                                                      \
  -s                                                                        \
  -o ./output/projectname.pdf                                               \
  --data-dir=$HOME/path/to/your/projects/projectname/                       \
  --filter pandoc-crossref                                                  \
  --filter pandoc-citeproc                                                  \
  --pdf-engine=xelatex                                                      \
  --top-level-division=chapter                                              \
  --number-sections                                                         \
  --template $HOME/path/to/your/projects/projectname/controls/arabica.latex \
  ./core/*.md                                                               \
  ./settings/*.yaml                                                         \
  ./metadata/*.yaml
