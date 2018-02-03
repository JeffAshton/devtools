#!/bin/bash
set -eu

credentailsDir=~/.aws

docker run -it --rm \
	--volume "$credentailsDir:/root/.aws" \
	jeffashton/terraforming $@
