provider "aws" {
  region = var.aws_region
  default_tags {
    tags = {
      Initiative       = local.initiative
      Owner            = local.owner
      Manager          = local.manager
      DeleteProtection = local.delete_protection
    }
  }
}