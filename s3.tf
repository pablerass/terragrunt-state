resource "aws_s3_bucket" "state_log" {
  bucket = "${var.state_bucket_log}"

  acl = "log-delivery-write"
}

resource "aws_s3_bucket" "state" {
  bucket = "${var.state_bucket}"

  acl = "private"

  logging {
    target_bucket = "${aws_s3_bucket.state_log.id}"
    target_prefix = "/"
  }

  versioning {
    enabled = true
  }
}
