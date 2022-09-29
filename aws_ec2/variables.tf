variable "my_region" {
    type = string
    description = "AWS region to use"
}

variable "my_access_key" {
    type = string
    description = "AWS access key"
}

variable "my_secret_key" {
    type = string
    description = "AWS secret access key"
}

variable "vpcname" {
default = "satya-myvpc1"
}

variable "aminame" {
type = map
default = {
us-west-2 = "ami-019d533b7b2201eff"
us-east-1 = "ami-052efd3df9dad4825"
ap-northeast-1 = "ami-03f4fa076d2981b45"  ##ubuntuServer22.04  0n tokyo
}
}
