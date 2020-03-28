#!/bin/sh

# Create a bucket
echo Creating Bucket...
aws s3 mb s3://cdb-script-bucket

# Create a file
echo Creating file...
echo Hello, AWS! > myFile.txt

# Put the file into the bucket.
echo Putting file into bucket...
aws s3 cp myFile.txt s3://cdb-script-bucket/my-file.txt

