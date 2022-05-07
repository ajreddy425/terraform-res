data "aws_caller_identity" "current" {}

data "aws_region" "current1" {}

data "aws_availability_zones" "available" {
  state = "available"
}


