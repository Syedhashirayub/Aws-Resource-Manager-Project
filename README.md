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
   # Output should be /home/ec2-user
