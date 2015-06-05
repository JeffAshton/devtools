#!/bin/bash

for repo in $( ls -d */ ); do
   cd $repo
   echo "------------------- $repo -------------------"

   status="$( git status )"

   if [ -n "$( echo "$status" | grep 'git push' )" ]; then
      echo "$status"
   elif [ -n "$( echo "$status" | grep 'git reset' )" ]; then
      echo "$status"
   elif [ -n "$( echo "$status" | grep 'git add' )" ]; then
      echo "$status"
   fi

   cd ..
done

