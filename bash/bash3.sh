#!/bin/bash
#retrieve the default web page from the container’s web service and notify the user of success or failure
curl http://COMP2101-S22 &&
	echo "Successfully retrieved" ||
	echo "Failed to retrieve"

