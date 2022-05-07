output "reg_name" {
  value = data.aws_region.current1.id

}

output "account_id" {
  value = data.aws_caller_identity.current.account_id
}


output "vpc_id" {
  value = aws_vpc.main.id
}


# output "subnet1_id" {
#   value = aws_subnet.subnet1.id

# }

# output "subnet2_id" {
#   value = aws_subnet.subnet2.id

# }


output "az_s" {
  value = local.azs
}

output "no_of_azs" {
  value = local.l

}

