#!/bin/bash
# Save Date and Time of the bash script
# execution inside
echo "I will just append to my custom file" >>/var/log/
cat msit.sh

echo "old file dates logfile"
sudo grep $(date +"%Y-%m-%d") alternatives.log
sudo grep $(date +"%Y-%m-%d") dpkg.log

echo "present date logfile"
sudo grep $(date +"%Y-%m-%d") auth.log
sudo grep $(date +"%Y-%m-%d") cloud-init-output.log
sudo grep $(date +"%Y-%m-%d") kern.log
sudo grep $(date +"%Y-%m-%d") syslog
sudo grep $(date +"%Y-%m-%d") cloud-init.log

echo "new logfile list"
ls

echo " create a backup file "
sudo tar cf alternatives.log.tar alternatives.log
echo "create a backupfile "
sudo tar cf dpkg.log.tar dpkg.log

echo "your directory code is created successfully"
sudo mkdir backup

echo "file move to folder"
sudo mv dpkg.log.tar backup
echo "file move to folder"
sudo mv alternatives.log.tar backup

echo "file move to folder"
sudo mv kern.log. backup
echo "file move to folder"
sudo mv auth.log backup
echo "file move to folder"
sudo mv cloud-init-output.log backup
echo "file move to folder"
sudo mv cloud-init.log backup

cd /var/log/backup/dated

echo "file move to folder"
sudo mv dpkg.log.tar dated
echo "file move to folder"
sudo mv alternatives.log.tar dated

echo "go to path "
cd /var/log/backup

echo "check move folder list"
ls -la
du -sh alternatives.log.tar
du -sh dpkg.log.tar
