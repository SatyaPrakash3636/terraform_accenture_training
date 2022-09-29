provider "aws" {
region = "ap-northeast-1"
access_key = "<>"
secret_key = "<>"
}

variable "name1" {
type = string
default = "satya-training01-bucket1"
}

resource "aws_s3_bucket" "mybucket1" {
bucket = var.name1
tags = {
Environment = "Development"
Trainer = "Pavan"
}
}

resource "aws_s3_bucket_acl" "myacl1" {
acl = "private"
bucket = aws_s3_bucket.mybucket1.id
}
