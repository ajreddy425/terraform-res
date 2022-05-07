// creatinng the subnet

resource "aws_subnet" "subnet1" {
  vpc_id            = aws_vpc.main.id // phone number of vpc(or any resource) = resource_type.logical_name.id 
  cidr_block        = cidrsubnet(var.vpc_cidr, 8, count.index)
  count             = local.l
  availability_zone = data.aws_availability_zones.available.names[count.index]

  tags = {
    Name = "terraform-subnet-01-${terraform.workspace}-${count.index + 1}"
  }
}



// subnet 02
resource "aws_subnet" "subnet2" {
  vpc_id            = aws_vpc.main.id // phone number of vpc(or any rwsource) = resource_type.logical_name.id 
  cidr_block        = cidrsubnet(var.vpc_cidr, 8, count.index + local.l)
  availability_zone = data.aws_availability_zones.available.names[count.index]
  count             = local.l


  tags = {
    Name = "terraform-subnet-02-${terraform.workspace}-${count.index + 1}"
  }
}

