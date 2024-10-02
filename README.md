# Live AWS Resource Manager Project
![project_workflow_diagram](https://github.com/user-attachments/assets/72c63584-dce7-4c8d-b94d-b3c2f5986ecc)


This project demonstrates a Live AWS Resource Manager using shell scripting for DevOps. The script automates the tracking of AWS resources like EC2 instances, S3 buckets, RDS databases, and IAM users.

## Table of Contents
- [Project Overview](#project-overview)
- [Getting Started](#getting-started)
- [Script Explanation](#script-explanation)
- [Setting Up a Cron Job](#setting-up-a-cron-job)
- [IAM Role Configuration](#iam-role-configuration)
- [License](#license)

## Project Overview

This project utilizes a shell script that runs in an AWS EC2 instance to list various AWS resources. The tutorial for the project can be found [here](https://www.youtube.com/watch?v=gx5E47R9fGk&list=PLdpzxOOAlwvIKMhk8WhzN1pYoJ1YU8Csa&index=13).

## Getting Started

### Prerequisites

- AWS account
- EC2 instance running Amazon Linux
- Basic knowledge of shell scripting

### Steps to Set Up

1. **Create a Linux Image in the EC2 Instance and Connect to It**:
   ```bash
   pwd
   # Ouput should be /home/ec2-user
2. **Create the Shell Script: Open the script in Vim**:
   ```bash
   vim aws_resource_tracker.sh
   
  -Press i to enter insert mode.
  -Paste the script contents.
  -Press Esc, then type :wq to save and exit.
  
3. **Set Execute Permissions**:
   ```bash
   chmod 700 aws_resource_tracker.sh

### Script Explanation

The script performs the following tasks:

 - Clear Output File: Clears any previous data.
 - List EC2 Instances: Uses AWS CLI to fetch EC2 instance details.
 - List S3 Buckets: Fetches available S3 buckets.
 - List RDS Databases: Retrieves information about RDS databases.
 - List IAM Users: Lists all IAM users.
Each section of the output is logged to a specified output file.

### Setting Up a Cron Job

To schedule the script to run at regular intervals, edit the crontab:

1. **Edit the crontab**:
   ```bash
   crontab -e
2. **Add the following line to schedule the script**:
   ```bash
   * * * * * /home/ec2-user/aws-resource-tracker.sh >> /home/ec2-user/log/aws-resource-output.txt 2>&1

### Cron Job Breakdown:
 - * * * * *: Runs every minute.
 - /home/ec2-user/aws-resource-tracker.sh: Path to the script.
 - >> /home/ec2-user/log/aws-resource-output.txt: Appends output to a log file.
 - 2>&1: Redirects error messages to the same log file.










