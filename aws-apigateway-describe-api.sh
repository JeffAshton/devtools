#!/bin/bash
set -eu

restApiId=$1

echo "rest api:"
aws apigateway get-rest-api --rest-api-id $restApiId

resourceIds=$(aws apigateway get-resources --rest-api-id $restApiId --query "items[*].id" --output text)
for resourceId in $resourceIds
do

	echo "--------------------------------------------------------"
	echo "resource $resourceId:"
	aws apigateway get-resource --rest-api-id $restApiId --resource-id $resourceId

	set +e
	methods=$(aws apigateway get-resource --rest-api-id $restApiId --resource-id $resourceId --query "keys(resourceMethods)" --output text)
	if [ $? != 0 ]; then
		methods=""
	fi
	set -e

	for method in $methods
	do

		echo "--------------"
		echo "$method:"
		aws apigateway get-method --rest-api-id $restApiId --resource-id $resourceId --http-method $method

	done

done