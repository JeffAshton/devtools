#!/bin/bash
set -eu

for child in $( ls -d */ ); do
    echo "Initializing $child"
    cd $child

    if [ -f ".terraform.lock.hcl" ]; then 
    	rm .terraform.lock.hcl
    fi

    terraform init -backend=false -input=false -lock=false -upgrade=true
    cd ..
done

