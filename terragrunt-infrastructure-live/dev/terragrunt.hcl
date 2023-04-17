include "root" {
  path = find_in_parent_folders()
}

terraform {
  source = "git::https://github.com/tabbygo-arc/terragrunt-and-tfc-better-together.git"
}

inputs = {
  prefix = "tabby"
  instance_type  = "t3.nano"
  environment = "dev"
  
}

