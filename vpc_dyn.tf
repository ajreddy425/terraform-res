// vpc for dynamic variables

resource "aws_vpc" "vpc_dynamic" { // resource "resource_type" "logical_name"
  cidr_block       = "192.16.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "terraform-vpc-dynamic"
  }
}


// subnet dynamic 

resource "aws_subnet" "sub_dynamic" { // resource "resource_type" "logical_name"
  cidr_block = "192.16.0.0/24"
  vpc_id     = aws_vpc.vpc_dynamic.id


  tags = {
    Name = "terraform-subnet-dynamic"
  }
}