// creating VPC (FAQ)
resource "aws_vpc" "main" { // resource "resource_type" "logical_name"
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    Name = "terraform-vpc-7am-${terraform.workspace}"
  }
}


# resource "aws_vpc" "import" {
#   ///
# }


// Do not assign the resource_type names to the logical name 
// resource_type !== logical name
// all the green colours are in comments
// ctrl + ? is the way to put all the lines in a comment and to uncomment press the same


resource "aws_vpc" "main2" { // resource "resource_type" "logical_name"
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "terraform-specific-7am-${terraform.workspace}"
  }
}