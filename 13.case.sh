#!/bin/bash

#If condition
# if [[ "${1}" -eq start ]]
# then
#     echo "Starting"
# elif [[ "${1}" -eq stop ]]
# then
#     echo "Stopping"
# else
# then
#     echo "Enter Valid Arguments"

#Case Statement:

case "${1}" in
  start)
    echo "Starting"
    ;;
  stop)
    echo "Stopping"
    ;;
  Restart)
    echo "retarting"
    ;;
  *)
    echo "Supply a valid option" >&2
    exit 1
    ;;
esac
   
 
