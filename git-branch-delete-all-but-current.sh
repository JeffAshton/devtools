#!/bin/bash

branches="$( git branch | grep -v "\*" )"

if [ -n "$branches" ]; then
    echo "$branches" | xargs -n 1 git branch -D
fi
