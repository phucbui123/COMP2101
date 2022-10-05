#!/bin/bash
#Script Challenge - BASH 2
#Creat variables for my report data
HostName=$(hostname)	#Variable for host name
FQDN=$(hostname -f)	#Variable for fully qualified domain name
Ip=$(ip route | tail -1 | awk '{print $9}')	#Variable for IP address
SeperLine================	#Variable for Seperator line
OperatingSys=$(hostnamectl | grep -w Operating | awk '{print $3" "$4" "$5}')	#Variable for operating system name and version
AvailSpace=$(df -h | grep -w / | awk '{print $4}')	#Variable for free disk space
#Blank line
echo
#Title
echo Report for $HostName
#Seperator line
echo $SeperLine
#Report FQDN
echo FQDN\: $FQDN
#Report Operating System name and version
echo Operating System name and version\: $OperatingSys
#Report IP address
echo IP Address: $Ip
#Report free disk space in human-friendly number
echo Root Filesystem Free Space\: $AvailSpace
#Seperator line
echo $SeperLine
#Blank line
echo
