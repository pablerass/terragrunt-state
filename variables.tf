variable "state_bucket" {
  description = "Terraform state bucket name"
  type        = "string"

  default = "${var.prefix}-state"
}

variable "state_bucket_log" {
  description = "Terraform log state bucket name"
  type        = "string"

  default = "${var.prefix}-state-log"
}

variable "state_dynamodb_table" {
  description = "Terragrunt state lock DynamoDb table name"
  type        = "string"

  default = "${var.prefix}-state-lock"
}
