resource "aws_s3_bucket" "state_log" {
  bucket = "${var.name}.state.log"

  acl = "log-delivery-write"
}

resource "aws_s3_bucket" "state" {
  bucket = "${var.name}.state"

  acl = "private"

  logging {
    target_bucket = "${aws_s3_bucket.state_log.id}"
    target_prefix = "/"
  }

  versioning {
    enabled = true
  }
}

resource "aws_dynamodb_table" "state_lock" {
  name           = "state-locks"
  read_capacity  = 1
  write_capacity = 1
  hash_key       = "StateFileId"

  attribute {
    name = "StateFileId"
    type = "S"
  }
}
