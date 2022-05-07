variable "vpc_cidr" {
  description = "enter the value of VPC CIDR "
  default     = "192.168.0.0/16"
  type        = string
}

// variable "logical_name"
// everything inside the variable block is optional

# variable "vpc_tag" {
#   description = "enter the tags for the VPC"
#   default     = "terraform-vpc-7am"

# }


// logical name can be anything
// Don't change the resource_type

# variable "vpc_subnet1" {
#   default     = "192.168.0.0/24"
#   description = "enter the subnet_cidr block"
# }

# variable "vpc_subnet2" {
#   default     = "192.168.1.0/24"
#   description = "enter the subnet_cidr block"
# }