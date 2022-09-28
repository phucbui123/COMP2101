#!/bin/bash
#Script Challenge
#The system’s fully-qualified domain name (FQDN)
hostname -f
#The operating system name and version
hostnamectl
#Any IP addresses the machine has that are not on the 127 network
hostname -I
#The amount of space available in only the root filesystem
df -h |head -1
df -h | grep -w /
