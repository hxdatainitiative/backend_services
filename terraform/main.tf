module "s3_backend_bucket" {
  source   = "terraform-aws-modules/s3-bucket/aws"

  bucket = local.s3_bucket_name
  acl    = "private"

  versioning = {
    enabled = true
  }

  server_side_encryption_configuration = {
    rule = {
      apply_server_side_encryption_by_default = {
        sse_algorithm = "aws:kms"
      }
    }
  }

  object_ownership = "BucketOwnerPreferred"

  request_payer = "Requester"
}
