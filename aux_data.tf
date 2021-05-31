resource "aws_dynamodb_table_item" "seed_list1" {
    depends_on = [
        aws_dynamodb_table.aux_table
    ]

    table_name = var.aux_table_name
    hash_key   = aws_dynamodb_table.aux_table.hash_key
    range_key  = aws_dynamodb_table.aux_table.range_key

    item = <<ITEM
    {
        "SiteName":{
            "S":"Google"
        },
        "URL":{
            "S":"www.google.com"
        }
    }
    ITEM
}

resource "aws_dynamodb_table_item" "seed_list2" {
    depends_on = [
        aws_dynamodb_table.aux_table
    ]

    table_name = var.aux_table_name
    hash_key   = aws_dynamodb_table.aux_table.hash_key
    range_key  = aws_dynamodb_table.aux_table.range_key

    item = <<ITEM
    {
        "SiteName":{
            "S":"Twitter"
        },
        "URL":{
            "S":"www.twitter.com"
        }
    }
    ITEM
}

resource "aws_dynamodb_table_item" "seed_list3" {
    depends_on = [
        aws_dynamodb_table.aux_table
    ]

    table_name = var.aux_table_name
    hash_key   = aws_dynamodb_table.aux_table.hash_key
    range_key  = aws_dynamodb_table.aux_table.range_key

    item = <<ITEM
    {
        "SiteName":{
            "S":"Netflix"
        },
        "URL":{
            "S":"www.netflix.com"
        }
    }
    ITEM
}

resource "aws_dynamodb_table_item" "seed_list4" {
    depends_on = [
        aws_dynamodb_table.aux_table
    ]

    table_name = var.aux_table_name
    hash_key   = aws_dynamodb_table.aux_table.hash_key
    range_key  = aws_dynamodb_table.aux_table.range_key

    item = <<ITEM
    {
        "SiteName":{
            "S":"PluralSight"
        },
        "URL":{
            "S":"www.pluralsight.com"
        }
    }
    ITEM
}

resource "aws_dynamodb_table_item" "seed_list5" {
    depends_on = [
        aws_dynamodb_table.aux_table
    ]

    table_name = var.aux_table_name
    hash_key   = aws_dynamodb_table.aux_table.hash_key
    range_key  = aws_dynamodb_table.aux_table.range_key

    item = <<ITEM
    {
        "SiteName":{
            "S":"The Hive"
        },
        "URL":{
            "S":"www.the-hive.bbd.co.za"
        }
    }
    ITEM
}