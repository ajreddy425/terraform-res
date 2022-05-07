# resource "aws_lb_cookie_stickiness_policy" "sticky" {
#   name                     = "my-stickiness"
#   load_balancer            = aws_elb.my-elb.id
#   lb_port                  = 80
#   cookie_expiration_period = 60
# }
