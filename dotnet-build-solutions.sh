#!/bin/bash
set -eu

for sln in $( ls *.sln ); do
    echo "------------------- $sln -------------------"
    dotnet restore $sln
	dotnet build $sln
done

