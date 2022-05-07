locals {
  azs = data.aws_availability_zones.available.names
  l   = length(data.aws_availability_zones.available.names)
  ws  = terraform.workspace
}