include "root" {
  path = find_in_parent_folders()
}

terraform {
  source = "git::https://github.com/ausmartway/terraform-terragrunt-infrastructure-module?ref=0.0.3"
}

inputs = {
  prefix = "yuleiliu"
  instance_type  = "t2.small"
  environment = "prod"
}

