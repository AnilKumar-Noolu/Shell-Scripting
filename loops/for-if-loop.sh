#!/bin/bash

for dir in $(find -type d)
do
	if [ -d test ]
	then
		echo "Test folder exists"
		echo "removing it"
		rm -rf test
	else
		echo "There is no Test folder"
	fi
done
