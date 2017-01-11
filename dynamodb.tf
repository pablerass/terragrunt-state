resource "aws_dynamodb_table" "state_lock" {
  name           = "${var.state_dynamodb_table}"
  read_capacity  = 1
  write_capacity = 1
  hash_key       = "StateFileId"

  attribute {
    name = "StateFileId"
    type = "S"
  }
}
