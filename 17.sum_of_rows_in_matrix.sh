#!/bin/bash

matrix="1 2 3
4 5 6
7 8 9"

row1=$(echo "$matrix" | awk '{print $1+$2+$3}')
row2=$(echo "$matrix" | awk '{print $4+$5+$6}')
row3=$(echo "$matrix" | awk '{print $7+$8+$9}')

echo "$NF"
echo "${row1}"
