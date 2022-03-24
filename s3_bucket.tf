resource "aws_s3_bucket" "bad_bucket" {

  bucket = "bad-bucket"
  acl    = "authenticated-read"

  logging {
    target_bucket = "access-logs"
    target_prefix = "bad-bucket/logging"
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

}