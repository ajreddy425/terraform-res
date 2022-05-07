// public subnets association to the route table 


# resource "aws_route_table_association" "sub1_asso" {
#   subnet_id      = aws_subnet.subnet1.id
#   route_table_id = aws_route_table.pub_rt.id
# }


# resource "aws_route_table_association" "sub2_assoc" {
#   subnet_id      = aws_subnet.subnet2.id
#   route_table_id = aws_route_table.pub_rt.id
# }


