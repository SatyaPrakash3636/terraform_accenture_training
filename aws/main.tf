resource "aws_s3_bucket" "mybucket1" {
    bucket = "satyaprakash-training01-bucket1"
    tags = {
    Environment = "Development"
    }
}

resource "aws_s3_bucket_acl" "myacl1" {
    acl = "private"
    bucket = aws_s3_bucket.mybucket1.id
}
