// ec2 instance in the subnet 02 ( 5/5)

# resource "aws_instance" "web_server02" {
#   ami                         = "ami-0f9fc25dd2506cf6d"
#   instance_type               = "t2.micro"
#   subnet_id                   = aws_subnet.subnet2.id
#   associate_public_ip_address = true
#   vpc_security_group_ids      = [aws_security_group.my_sg.id]
#   key_name                    = "aws_8am_batch"
#   user_data                   = file("./scripts/apache2.sh")


#   tags = {
#     Name = "web-server-02"
#   }
# }
