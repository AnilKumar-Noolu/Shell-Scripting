#!/bin/bash

#Cmd to list TCP and UDP ports
netstat -nutl

#cmd to list only IPv4 not IPv6
netstat -4nutl

netstat -4nutl | grep ':'  #Lists all lines which contains ':'

netstat -4nutl | grep ':' | awk '{print $4}'         //print the Ip address along with ports

netstat -4nutl | grep ':' | awk '{print $4}' | cut -d ':' -f 2
#OR
netstat -4nutl | grep ':' | awk '{print $4}' | awk -F ':' '{print $2}'
#OR
netstat -4nutl | grep ':' | awk '{print $4}' | awk -F ':' '{print $NF}'
