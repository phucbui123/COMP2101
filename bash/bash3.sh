#!/bin/bash

#test for lxd file and success test comment
test -e ~/snap/lxd && echo "lxd software exists"
#test for Apache2 file in the container and success comment
lxc exec COMP2101-S22 test /etc/apache2 &&
	echo "Apache2 in the container exists"
#test for host name COMP2101-S22 in /etc/hosts
grep -q COMP2101-S22 /etc/hosts && echo "COMP2101-S22 was added to /etc/hosts with current IP address"
#retrieve the default web page from the container’s web service and notify the user of success or failure
curl http://COMP2101-S22 &&
	echo "Successfully retrieved" ||
	echo "Failed to retrieve"

