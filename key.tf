resource "aws_kms_key" "key" {
    description = "Site Monitor DynamoDB Key"
    key_usage   = "ENCRYPT_DECRYPT"
    
    is_enabled               = "true"
    enable_key_rotation      = "true"
    customer_master_key_spec = "SYMMETRIC_DEFAULT"
    deletion_window_in_days  = 7
}