locals {
  initiative        = "Data Science and Engineering"
  owner             = "fmeza@hexacta.com"
  manager           = "Fernando Meza - Jonas Valleta"
  delete_protection = "True"

  ### Buckets to create ###
  s3_buckets_prefix = "hx-datainitiative"
  s3_bucket_name = "${local.s3_buckets_prefix}-backend"
}
