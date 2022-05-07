// vpc taint command (FAQ)

# resource "aws_vpc" "vpc_taint" { // resource "resource_type" "logical_name"
#   cidr_block       = "10.0.0.0/16"
#   instance_tenancy = "default"

#   tags = {
#     Name = "terraform-vpc-taint"
#   }
# }