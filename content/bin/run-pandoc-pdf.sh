#!/bin/bash

FILENAME="bucklin_dissertation"


pandoc                                                                      \
  -s                                                                        \
  -o "${FILENAME}.pdf"
  --data-dir=./build
  --filter pandoc-crossref                                                  \
  --filter pandoc-citeproc                                                  \
  --pdf-engine=xelatex                                                      \
  --top-level-division=chapter                                              \
  --number-sections                                                         \
  ./content/*.md                                                               \
  ./settings/*.yaml                                                         \
  ./metadata/*.yaml


  # --template $HOME/path/to/your/projects/projectname/controls/arabica.latex \
