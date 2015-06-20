#!/bin/bash

for id in $( docker ps -a -q ); do
    docker kill $id
    docker rm -f $id
done

