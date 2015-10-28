#!/bin/bash
set -e

git branch --merged origin/master | grep -v "\*" | grep -v master | grep -v dev | xargs -n 1 git branch -d

