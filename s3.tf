resource "aws_s3_bucket" "www" {
  bucket = "${var.organization_name}-${lower(terraform.workspace)}-www"
  acl = "private"
}

resource "aws_s3_bucket_acl" "www" {
  bucket = aws_s3_bucket.www.id
  acl    = "private"
}

resource "aws_s3_bucket" "www-logs" {
  bucket = "${var.organization_name}-${lower(terraform.workspace)}-www-logs"
}

resource "aws_s3_bucket_acl" "www-logs" {
  bucket = aws_s3_bucket.www-logs.id
  acl    = "log-delivery-write"
}

resource "aws_s3_bucket_logging" "www-aws_s3_bucket_logging" {
  bucket = aws_s3_bucket.www.id
  target_bucket = aws_s3_bucket.www-logs.id
  target_prefix = "s3-access-logs/"
}