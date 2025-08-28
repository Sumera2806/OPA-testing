package terraform

# Deny creation of unencrypted S3 buckets
deny[msg] {
  input.resource_changes[_].type == "aws_s3_bucket"
  not input.resource_changes[_].change.after.server_side_encryption_configuration
  msg := "S3 bucket must have encryption enabled"
}
