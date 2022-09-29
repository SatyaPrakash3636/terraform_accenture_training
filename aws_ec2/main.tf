##############  VPC  Creation
resource "aws_vpc" "myvpc1" {
  cidr_block = "10.0.0.0/16"
  tags = {
   Name = "${var.vpcname}"
  }
}

################## Internet gateway to the vpc
resource "aws_internet_gateway" "myigw1"{
  vpc_id = aws_vpc.myvpc1.id
  tags = {
   Name = "satya_igw1"
  }
}

#################  Subnet to have Instance on same vpc

resource "aws_subnet" "mysubnet1" {
  vpc_id = aws_vpc.myvpc1.id
  map_public_ip_on_launch = true              
  cidr_block = "10.0.0.0/16"
  tags = {
   Name = "satya_sub1"
  }
}

################  route table creation
resource "aws_route_table" "myroute1"{
  vpc_id = aws_vpc.myvpc1.id
  route {
      cidr_block = "0.0.0.0/0"
      gateway_id = aws_internet_gateway.myigw1.id
}
}
############  Route table association with subnet
resource "aws_route_table_association" "myrw_association"{
  subnet_id = aws_subnet.mysubnet1.id
  route_table_id = aws_route_table.myroute1.id
}

####################  Security Group to allow ssh and http access
resource "aws_security_group" "mysg1" {
  name        = "satya_allow_ssh_http"
  vpc_id      = aws_vpc.myvpc1.id

  ingress {
    description      = "SSH from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  ingress {
    description      = "HTTP from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

 egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_ssh_http"
  }
}
