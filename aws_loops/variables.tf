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

variable "mycidr" {
    type = string
    description = "CIDR block to use"
    default = "100.0.0.0/16"
}