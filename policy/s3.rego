package terraform.s3

deny[msg] {
  input.resource_type == "aws_s3_bucket"
  input.change.after.acl != "private"
  msg = "S3 buckets must be private"
}
