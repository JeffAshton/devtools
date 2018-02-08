#!/bin/bash
set -eu

credentailsDir=~/.aws

docker run --rm \
	--volume "$credentailsDir:/root/.aws" \
	jeffashton/terraforming $@
