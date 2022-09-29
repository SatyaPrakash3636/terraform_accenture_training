resource "aws_iam_user" "myusers"{
  count = 4
  name ="satya-client${count.index+1}"
}

resource "aws_vpc" "myvpc" {
  count = 2
  cidr_block = "10.${count.index}.0.0/16"
  instance_tenancy = "default"
  tags = {
    Name = "satya-vpc${count.index}"
}
}

variable "users" {
  default = ["pavan-1","pavan-2","pavan-sam","pavan-nita","pavan-kiran"]
}

resource "aws_iam_user" "mynewusers"{
  for_each = toset(var.users)
  name = each.value
}
