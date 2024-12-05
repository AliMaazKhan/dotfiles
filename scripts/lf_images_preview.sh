#!/bin/bash

case "$1" in
    *.png|*.jpg|*.jpeg|*.gif|*.bmp|*.svg|*.webp)
        ueberzug layer --silent --parser bash <<EOF
        [action]
        add
        [identifier]
        preview
        [x]
        $4
        [y]
        $5
        [width]
        $2
        [height]
        $3
        [path]
        $1
EOF
        ;;
    *) 
        bat --style=plain --paging=never --wrap=never "$1" || cat "$1" 
        ;;
esac

