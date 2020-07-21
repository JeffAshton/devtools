#!/bin/bash
#set -e

for child in $( ls -d */ ); do
    echo "Updating $child"
    terraform-v12 init $child
    terraform-v12 0.12upgrade -yes $child
done

