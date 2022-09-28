resource "aws_vpc" "myvpc" {
    cidr_block = var.mycidr
    instance_tenancy = "default"
    tags = {
      "Name" = "Satya_VPC"
    }
}

resource "aws_internet_gateway" "mygateway" {
    vpc_id = aws_vpc.myvpc.id
    tags = {
      "Name" = "Satya_Gateway"
    }
}