package terraform

# Allow rule (true only if no public S3 buckets exist)
allow if {
  not public_buckets_exist
}

# Deny if S3 bucket is public
public_buckets_exist if {
  input.resource.aws_s3_bucket[_].acl == "public-read"
}
