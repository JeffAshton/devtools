#!/bin/bash
set -e

for id in $( docker ps -a -q ); do
    docker kill $id
    docker rm -f $id
done

