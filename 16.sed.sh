#!/bin/bash

sed '/^#/d' txt    //Deleted the line which starts with # position

sed '/^$/d' txt    //Deletes the empty line with no content

sed 's/apache/httpd/' txt      //Replaces apache with httpd in file txt

#Instead of applying one command at a time, we can group all commands to a file and apply that.

echo '/^#/d' > file1
echo '/^$/d' >> file1
echo 's/apache/httpd/'  >> file1

sed -f file1 txt                 //Will do the same thing as above 3 commands
