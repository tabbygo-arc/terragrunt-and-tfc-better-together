

# //local backend
 generate "backend" {
   path      = "backend.tf"
   if_exists = "overwrite_terragrunt"
   contents = <<EOF
 terraform {
   backend "local" {
   }
 }
 EOF
 }

//S3 backend
//  generate "backend" {
//    path      = "backend.tf"
//    if_exists = "overwrite_terragrunt"
//    contents = <<EOF
//  terraform {
//    backend "s3" {
//      bucket         = "tabby-terraform-remote-state-storage-s3-demo"
//      key            = "terragrunt-${path_relative_to_include()}"
//      region         = "us-east-2"
//    }
//  }
//  EOF
//  }


## Terraform Cloud backend old style:
// generate "backend" {
//   path      = "backend.tf"
//   if_exists = "overwrite_terragrunt"
//   contents = <<EOF
//   terraform {
//     backend "remote" {
//     hostname = "app.terraform.io"
//     organization = "tabby_mcbot"

//     workspaces {
//       name = "terragrunt-${path_relative_to_include()}"
//     }
//   }
// }
// EOF
// }






# //Terraform Cloud backend 
# generate "backend" {
#   path      = "backend.tf"
#   if_exists = "overwrite_terragrunt"
#   contents = <<EOF
# terraform {
#     cloud {
#     organization = "tabby_mcboti"
#     hostname = "app.terraform.io" # Optional; defaults to app.terraform.io

#     workspaces {
#         name = "terragrunt-${path_relative_to_include()}"
#     }
#   }

# }
# EOF
# }

retryable_errors = [
  "(?s).*error validating .* credentials.*"
]


