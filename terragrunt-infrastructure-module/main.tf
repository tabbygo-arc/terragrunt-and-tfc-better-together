data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

 resource "aws_instance" "ubuntu" {
   ami               = data.aws_ami.ubuntu.id
   instance_type     = var.vmsize
   tags = {
     Name= "${var.prefix}-terragrunt-test-${var.environment}"
     ttl           = 1
     owner         = "tabby.orwa@hashicorp.com"
     region        = "us-east-2"
     purpose       = "demo"
     terraform     = "true"
     tfe           = "true"
     instance_type = var.vmsize
   }
 }
