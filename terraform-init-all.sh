#!/bin/bash
set -eu

for child in $( ls -d */ ); do
    echo "Initializing $child"
    cd $child
    terraform init -input=false -lock=false
    cd ..
done

