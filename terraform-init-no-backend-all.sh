#!/bin/bash
set -eu

for child in $( ls -d */ ); do
    echo "Initializing $child"
    cd $child
    terraform init -backend=false -input=false -lock=false
    cd ..
done

