#!/bin/bash
# Save Date and Time of the bash script
# execution inside
echo "I will just append to my custom file" >>/var/log/
cat msit.sh

echo "old file dates logfile"
grep $(date +"%Y-%m-%d") alternatives.log
grep $(date +"%Y-%m-%d") dpkg.log

echo "present date logfile"
grep $(date +"%Y-%m-%d") auth.log
grep $(date +"%Y-%m-%d") cloud-init-output.log
grep $(date +"%Y-%m-%d") kern.log
grep $(date +"%Y-%m-%d") syslog
grep $(date +"%Y-%m-%d") cloud-init.log

echo "new logfile list"
ls

echo " create a backup file "
tar cf alternatives.log.tar alternatives.log
echo "create a backupfile "
tar cf dpkg.log.tar dpkg.log

echo "your directory code is created successfully"
mkdir backup

echo "file move to folder"
mv dpkg.log.tar backup
echo "file move to folder"
mv alternatives.log.tar backup

echo "file move to folder"
mv kern.log. backup
echo "file move to folder"
mv auth.log backup
echo "file move to folder"
mv cloud-init-output.log backup
echo "file move to folder"
mv cloud-init.log backup

cd  /var/log/backup

echo "create a directory"
mkdir dated

cd /var/log/backup/

echo "file move to folder"
mv dpkg.log.tar dated
echo "file move to folder"
mv alternatives.log.tar dated

echo "go to path "
cd /var/log/backup/dated

echo "check move folder list"
ls -lrt | grep "april 6"
ls -lrt

du -sh alternatives.log.tar
du -sh dpkg.log.tar

echo "backuplofile copy s3 bucket"
 aws s3 cp /var/log/backup/dated/alternatives.log.tar s3://msitsolutionsbackuplogfile/backup/
 aws s3 cp /var/log/backup/dated/dpkg.log.tar s3://msitsolutionsbackuplogfile/backup/


