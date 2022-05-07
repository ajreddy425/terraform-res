// ec2 instance in the subnet 01 ( 5/5)

# resource "aws_instance" "web_server01-demo" {
#   ami                         = "ami-0f9fc25dd2506cf6d"
#   instance_type               = "t2.micro"
#   subnet_id                   = aws_subnet.subnet1.*.id[count.index]
#   associate_public_ip_address = true
#   vpc_security_group_ids      = [aws_security_group.my_sg.id]
#   key_name                    = "aws_8am_batch"
#   user_data                   = file("./scripts/apache1.sh")
#   count                       = local.l



#   tags = {
#     Name     = "Public-Instance-01-demo-${count.index + 1}-${local.ws}"
#     Location = "Bangalore"
#   }
# }


// for a custom VPC , whether I need to enable Public Ip or by default public ip enabled ?

