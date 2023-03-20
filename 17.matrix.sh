#!/bin/bash

# Define the 3x3 matrix as a space-separated string
matrix="1 4 7
2 5 8
3 6 9"

# Calculate the sum of each row using awk and cut
row1=$(echo "$matrix" | awk '{print $1+$2+$3}')
row2=$(echo "$matrix" | awk '{print $4+$5+$6}')
row3=$(echo "$matrix" | awk '{print $7+$8+$9}')

#echo "$NF"
#echo NF
#echo "NF"
echo "$NR"

# Print the sum of each row
echo "Sum of row 1: $row1"
#echo "Sum of row 2: $row2"
#echo "Sum of row 3: $row3"

