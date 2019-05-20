#!/bin/bash

find sections/ -name '*.md*' -type f -print | sort | fzf-preview
