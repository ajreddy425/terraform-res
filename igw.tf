resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id // phone number of VPC

  tags = {
    Name = "my-iGW-terraform"
  }
}