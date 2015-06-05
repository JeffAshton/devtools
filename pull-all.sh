#!/bin/bash

for repo in $( ls -d */ ); do
   echo "------------------- $repo -------------------"
   cd $repo
   git pull
   cd ..
done

