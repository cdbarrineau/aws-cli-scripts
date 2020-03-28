#!/bin/sh

# Create a bucket.  The bucket name must be unique 
# across all of AWS.  The bucket is only created within 
# the region configured in your AWS config file in ~/.aws/config
echo Creating Bucket...
aws s3 mb s3://cdb-script-bucket

# Create a file
echo Creating file...
echo Hello, AWS! > myFile.txt

# Put the file into the bucket.
echo Putting file into bucket...
aws s3 cp myFile.txt s3://cdb-script-bucket/my-file.txt