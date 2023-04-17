# Define your variables in here.
variable "prefix" {
  type        = string
  default     = "tabby"
  description = "description"
}

variable "environment" {
  type        = string
  default     = "test"
  description = "environment"
}

variable "vmsize" {
  type        = string
  default     = "t2.micro"
  description = "aws ec2 instance vm type"
}

