# resource "aws_nat_gateway" "my_ngw" {
#   allocation_id = aws_eip.my_eip.id
#   subnet_id     = aws_subnet.subnet1.id

#   tags = {
#     Name = "gw-NAT"
#   }

# }


# // eip for nat gateway 

# resource "aws_eip" "my_eip" {
#   vpc = true
# }