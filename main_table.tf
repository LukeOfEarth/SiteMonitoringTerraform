resource "aws_dynamodb_table" "my_table" {
  depends_on = [
    aws_kms_key.key
  ]

  name             = var.main_table_name
  billing_mode     = "PAY_PER_REQUEST"
  hash_key         = "SiteId"
  stream_enabled   = true
  stream_view_type = "NEW_AND_OLD_IMAGES"

  attribute {
    name = "SiteId"
    type = "S"
  }

  replica {
    region_name = var.region_2
    kms_key_arn = aws_kms_key.replica_key.arn
  }

  ttl {
    attribute_name = "TimeToExist"
    enabled        = true
  }

  point_in_time_recovery {
    enabled = true
  }

  server_side_encryption {
    enabled     = true
    kms_key_arn = aws_kms_key.key.arn
  }
}