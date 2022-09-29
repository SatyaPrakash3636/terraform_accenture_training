data "aws_s3_bucket" "myS3Info" {
  bucket = "pavan-bucket-demo-read"
}

output "S3data" {
    value = data.aws_s3_bucket.myS3Info
}