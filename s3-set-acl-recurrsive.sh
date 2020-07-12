#!/bin/bash
set -eu

bucket=$1
path=$2
acl=$3

keys=$(aws s3 ls "s3://${bucket}${path}" --recursive | awk '{ print $4 }')
for key in $keys
do
	echo "Updating $key"
	aws s3api put-object-acl --acl "$acl" --bucket "$bucket" --key "$key"
done
