#!/bin/bash

mdfile="$1"

sed -n '/^#.*\w$/p' "$mdfile"

