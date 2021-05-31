resource "aws_dynamodb_table" "aux_table" {
  name             = var.aux_table_name
  billing_mode     = "PAY_PER_REQUEST"
  hash_key         = "SiteName"
  range_key        = "URL"
  stream_enabled   = true
  stream_view_type = "NEW_AND_OLD_IMAGES"

  attribute {
    name = "SiteName"
    type = "S"
  }

  attribute {
    name = "URL"
    type = "S"
  }

  point_in_time_recovery {
    enabled = true
  }

  server_side_encryption {
    enabled     = true
    kms_key_arn = aws_kms_key.key.arn
  }
}