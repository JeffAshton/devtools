#!/bin/bash
set -eu

for child in $( ls -d */ ); do
    echo "Updating $child"
    terraform-0.13 init -input=false -lock=false $child
    terraform-0.13 0.13upgrade -yes $child
done

