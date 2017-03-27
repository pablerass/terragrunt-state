variable "module" {
  description = "Terraform module"
  default     = "tf_aws_vpc"
}

variable "tags" {
  description = "Resource tags"
  default     = {}
}