#!/bin/bash
set -e

remotes=`git remote`

for remote in $remotes
do
	git remote prune $remote
done

git gc --aggressive --quiet --prune=now
