resource "aws_kms_key" "my_aws_key" {
  description             = "This key is used to encrypt bucket objects"
  deletion_window_in_days = 10
}

resource "aws_s3_bucket" "bootcamp30-007-hart" {
  bucket = "bootcamp30-007-hart"
}

resource "aws_s3_bucket_server_side_encryption_configuration" "mysteek" {
  bucket = aws_s3_bucket.bootcamp30-007-hart.id

  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = "aws_kms_key.my_aws_key.arn"
      sse_algorithm     = "aws:kms"
    }
  }
}