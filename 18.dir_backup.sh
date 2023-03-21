#!/bin/bash

#Give the directories which you want to take backup

backup_dirs=("/etc" "/home")
dest_dir="root/backup_dir"       #Location of Destination directory where we want to store backup
mkdir -p $dest_dir               #creating that destination directory
backup_date=$(date +%b-%d-%y)    #Creating backup date with today month,day,year

echo "Starting backup of: ${backup_dirs[@]}"

for i in "${backup_dirs[@]}"; do
sudo tar -Pczf /tmp/$i-$backup_date.tar.gz $i
if [ $? -eq 0 ];
then
	echo "$i backup succeeded"
else
	echo "$i backup failed"
fi
done


#For removing the backups:
sudo rm /tmp/*.gz
if [[ $? -eq 0 ]];
then
	echo "Backup's have been removed successfully"
else
	echo "Backup's removal has been failed"
fi
done
