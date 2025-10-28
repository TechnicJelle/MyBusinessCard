#!/usr/bin/env bash

# In Termux, execute with `source compile.sh`

typst compile card.typ --font-path ./Fonts/ --ignore-system-fonts --input "NAME=$TYPST_NAME"
typst compile card.typ --font-path ./Fonts/ --ignore-system-fonts --input "NAME=$TYPST_NAME" --format png --ppi 300
