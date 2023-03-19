#!/bin/bash

#Check whether he logged in with root user credentials
if [[ "${UID}" -ne 0 ]]
then
	echo "Please execute this script as root user" >&2
	exit 1
fi

#Pass the user u want to delete as first name after execute statement
USER="${1}"

userdel ${USER}

if [[ "${?}" -ne 0 ]]
then
	echo "The account ${USER} was not deleted" >&2
	exit 1
fi

echo "The ${USER} account was deleted"



