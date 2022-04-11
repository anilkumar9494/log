# log

•	How to use this bash script

•	# Save Date and Create a ec2 instance in ubentu

•	Go to ec2 terminal 
Go to path /var/log


#!/bin/bash
#Time of the bash script
# execution inside


Go to path create a file.sh
========
echo "I will just append to my custom file" >>/var/log/
cat msit.sh

check the oldlogfile
==============
echo "old file dates logfile"
 grep $(date +"%Y-%m-%d") logfilename.log

check the present logfile
========
echo "present date logfile"
grep $(date +"%Y-%m-%d") auth.log
grep $(date +"%Y-%m-%d") cloud-init-output.log
grep $(date +"%Y-%m-%d") kern.log
grep $(date +"%Y-%m-%d") syslog
grep $(date +"%Y-%m-%d") cloud-init.log

check list
========
echo "new logfile list"
ls

create a oldfile  backup commands
===========
tar cf filename.log.tar   filename.log


create a  directory folder
======
mkdir backup


move the backup logfile
============
mv logfilename.log.tar backup

move file In folder
==============

mv logfile.log   folder

go to path
===
cd  /var/log/backup

create a directory folder
mkdir foldername
 
go to path
====
cd /var/log/backup


file move to folder
======

mv logfile.log.tar folder

go to path 
====
cd /var/log/backup/dated

check  list static date
=====
ls -lrt | grep "april 6"

check list dynamic date
=======
ls -ltr

check size 
===
du -sh logfilename.log.tar


How to Install AWS CLI on Ubuntu 20.04 install AWS CLI on Ubuntu 20.04.
 =========
Prerequisites
To install AWS CLI on Ubuntu you need to meet the following requirements:
•	AWS Account
•	Ubuntu 20.04 Server
•	Sudo privileged user account
Installation

For the latest version download the 64 bit version using curl command:
$ sudo curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
 
  Install unzip the package
 ($ sudo apt install unzip).

Run the following command to unzip the download the file:
$ sudo unzip awscliv2.zip

Now run the installer, using:
$ sudo ./aws/install

To verify the installation, type:
$ aws --version
Output:
aws-cli/2.1.33 Python/3.8.8 Linux/5.4.0-70-generic exe/x86_64.ubuntu.20 prompt/off
Method 2: Installing AWS CLI using APT
 
Update system packages: 
$ sudo apt-get update

Once the system packages are updated, run the following command to install AWS CLI.
$ sudo apt-get install awscli -y

On completion the installation, run the following command to verify.
$ aws --version
You will get output similar as:

Checking AWS CLI version
After installation, you can configure access to AWS account using AWS CLI. Before starting with aws configuration, you should have IAM user's Access key and Secret key provided with proper access.
Run the following command to configure access to aws account.
$ aws configure
Enter the following details accordingly:
===================
•	AWS Access Key ID [IAM user's Access key] :user access key
•	AWS Secret Access Key [IAM user's secret key] :user securet key
•	Default region name [Aws region]
•	Default output format [JSON format is fine]
You will have output similar as:
Configuring access to aws account

$ which aws
You will get output as:
/usr/local/bin/aws

Use the following command to check symlink and installation path.
=========
$ ls -l /usr/local/bin/aws

You will get output as:
lrwxrwxrwx 1 root root 37 Mar 31 04:01 /usr/local/bin/aws -> /usr/local/aws-cli/v2/current/bin/aws 
 
 Creating S3 Bucket using AWS CLI
$ aws s3api help
Output:
aws s3api create-bucket --bucket example-bucket-12345 --region us-east-1

Creating S3 bucket using AWS CLI
Use the following command to list created S3 bucket.
=======================
$ aws s3 list
output: Listing s3 bucket using AWS CLI
Push Contents to S3 Bucket

Once an S3 bucket is created, you are now good to go for file storage. Run the following command to push your contents to an S3 bucket. In this example, I have sent a simple text file to the S3 bucket. You can push other files in similar ways.
=======================================
$ aws s3 cp example.txt s3://example-bucket-12345

Where example.txt is the filename and example-bucket-12345 is the S3 bucket name. Once the upload is successful, you will get output similar as:
output:
 
upload: ./example.txt to s3://example-bucket-12345/example.txt

You can list contents of the bucket using the following command.
=====
$ aws s3 ls s3://example-bucket-1

bash script using github 
==========
Bash script is using push the github using github clone copy and paste the jenkins jobs github

jenkins jobs run these bash script

jenkins exective shell sh file.sh apply and save click build 

scripting purpose
===============
scripting purpose is set command  by using script we can backup the log file in a instance and store them.
