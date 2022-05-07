# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}



terraform {
  backend "s3" {
    bucket         = "terraform-bucket-2804"
    key            = "path/s3statefile/terraform.tfstate" // (FAQ)  5/5
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
  }
}


// Don't forget to save the code. Previous batch people watsted 5 hours of time to do this.

// 5 sec == 5 hours now

