#!/bin/bash

for repo in $( ls -d */ ); do
   echo "------------------- $repo -------------------"
   cd $repo
   npm prune
   npm rebuild
   cd ..
done

