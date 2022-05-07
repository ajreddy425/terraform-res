//create the S3 bucket (FAQ)

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-tf-0505"

  tags = {
    Name        = "My-bucket"
    Environment = "Dev"
  }
}


// acl private

resource "aws_s3_bucket_acl" "acl_pri" {
  bucket = aws_s3_bucket.my_bucket.id
  acl    = "private"
}


// s3 life cycle rule as a resource (FAQ)

resource "aws_s3_bucket_lifecycle_configuration" "bucket-config" {
  bucket = aws_s3_bucket.my_bucket.id

  rule {
    id = "log"

    expiration {
      days = 90
    }

    filter {
      and {
        prefix = "log/"

        tags = {
          rule      = "log"
          autoclean = "true"
        }
      }
    }

    status = "Enabled"

    transition {
      days          = 30
      storage_class = "STANDARD_IA"
    }

    transition {
      days          = 60
      storage_class = "GLACIER"
    }
  }
}

// versioning bucket 

# resource "aws_s3_bucket_versioning" "versioning" {
#   bucket = aws_s3_bucket.my_bucket.id
#   versioning_configuration {
#     status = var.versioning1
#   }
# }



# variable "versioning1" {
#   description ="whether to enable to versioning for the bucket??"

# }

//status - (Required) Whether the rule is currently being applied. Valid values: Enabled or Disabled.

// Suspended