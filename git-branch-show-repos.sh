#!/bin/bash
set -e

branchName="$1"
if [[ -z "$branchName" ]]; then
	echo "Usage: git-branch-show-repos.sh <<branchName>>"
	exit 1
fi

for repo in $( ls -d */ ); do
	if [ $( ls -a $repo | grep ^.git$ ) ]; then
		cd $repo
	
		if [ $( git branch | grep $branchName ) ]; then
			echo "------------------- $repo -------------------"
		fi

		cd ..
	 fi
done

