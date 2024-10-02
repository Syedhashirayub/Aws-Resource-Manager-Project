#!/bin/bash

# Set your desired AWS region
REGION="us-east-1"
OUTPUT_FILE="aws_resource_tracker_output.txt"

# Clear the output file before writing to it
> $OUTPUT_FILE

echo "🛠 AWS Resource Tracker 🛠" | tee -a $OUTPUT_FILE
echo "==========================" | tee -a $OUTPUT_FILE

# EC2 Instances
echo "🔍 Listing EC2 Instances..." | tee -a $OUTPUT_FILE
aws ec2 describe-instances --region $REGION --query "Reservations[*].Instances[*].[InstanceId,InstanceType,State.Name,PublicIpAddress]" --output table | tee -a $OUTPUT_FILE
echo "" | tee -a $OUTPUT_FILE

# S3 Buckets
echo "🔍 Listing S3 Buckets..." | tee -a $OUTPUT_FILE
aws s3 ls --region $REGION | tee -a $OUTPUT_FILE
echo "" | tee -a $OUTPUT_FILE

# RDS Databases
echo "🔍 Listing RDS Databases..." | tee -a $OUTPUT_FILE
aws rds describe-db-instances --region $REGION --query "DBInstances[*].[DBInstanceIdentifier,DBInstanceClass,Engine,DBInstanceStatus,Endpoint.Address]" --output table | tee -a $OUTPUT_FILE
echo "" | tee -a $OUTPUT_FILE

# IAM Users
echo "🔍 Listing IAM Users..." | tee -a $OUTPUT_FILE
aws iam list-users --query "Users[*].[UserName,UserId,CreateDate]" --output table | tee -a $OUTPUT_FILE
echo "" | tee -a $OUTPUT_FILE

echo "✅ AWS Resource Tracking Completed!" | tee -a $OUTPUT_FILE
