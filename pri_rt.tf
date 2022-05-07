// private route table

# resource "aws_route_table" "my_pri_rt" {
#   vpc_id = aws_vpc.main.id

#   route {
#     cidr_block     = "0.0.0.0/0"
#     nat_gateway_id = aws_nat_gateway.my_ngw.id
#   }


#   tags = {
#     Name = "pri_rt"
#   }
# }