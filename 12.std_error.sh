#!/bin/bash

#For standard input, output and error: we use some characters specifically like 0,1,2


#Standard Input
sudo passwd --stdin anil 0< password    //There should be no gap between 0 and '<'

#Standard Output
echo "secret" 1> password               //There should be no gap between 1 and '>'
cat password

#Standard Error
head -n1 /etc/passwd                  //It lists top line in users group
head -n1 /etc/hosts                   //It lists top line in hosts group
head -n1 /fakelist                    //It will list a error saying cannot open file

head -n1 /etc/passwd /etc/hosts /fakelist > head.out          //It will list error after displaying passwd and hosts as there ios no redirection for error

head -n1 /etc/passwd /etc/hosts /fakelist 2> head.err         //Now the error will be redrected to head.err file and it will not be displayed default on command prompt.

head -n1 /etc/passwd /etc/hosts /fakelist > head.out 2>head.err //combining both errors

