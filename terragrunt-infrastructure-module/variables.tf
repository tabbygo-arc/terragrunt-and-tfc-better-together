# Define your variables in here.
variable "prefix" {
  type        = string
  default     = "yuleiliu"
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

