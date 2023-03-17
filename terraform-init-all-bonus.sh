#!/bin/bash
set -eu


for environment in $( ls -d */ ); do
    cd $environment

    for region in $( ls -d */ ); do
        cd $region

        for module in $( ls -d */ ); do
            echo "Initializing $environment/$region/$module"
            cd $module
            terraform init -backend=false -input=false -lock=false
            cd .. 
        done

        cd ..
    done

    cd ..
done
