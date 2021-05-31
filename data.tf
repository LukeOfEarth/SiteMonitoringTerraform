resource "aws_dynamodb_table_item" "seed1" {
    depends_on = [
        aws_dynamodb_table.my_table
    ]

    table_name = var.main_table_name
    hash_key   = aws_dynamodb_table.my_table.hash_key

    item = <<ITEM
    {
        "SiteId":{
            "S":"www.google.com|1622199245"
        },
        "SiteName":{
            "S":"Google"
        },
        "Status":{
            "S":"AVAILABLE"
        },
        "TimeToExist":{
            "N":"1622449814"
        }
    }
    ITEM
}

resource "aws_dynamodb_table_item" "seed2" {
    depends_on = [
        aws_dynamodb_table.my_table
    ]

    table_name = var.main_table_name
    hash_key   = aws_dynamodb_table.my_table.hash_key

    item = <<ITEM
    {
        "SiteId":{
            "S":"www.twitter.com|1622199245"
        },
        "SiteName":{
            "S":"Twitter"
        },
        "Status":{
            "S":"AVAILABLE"
        },
        "TimeToExist":{
            "N":"1622449814"
        }
    }
    ITEM
}