#!/bin/bash
set -eu

for child in $( ls -d */ ); do
    echo "Updating $child"
    terraform-0.12 init -input=false -lock=false $child
    terraform-0.12 0.12upgrade -yes $child
done

