variable "myvar" {
    type = string
    description = "My first variable in terraform with string"
    default = "this is Terraform training for Accenture by RPS"
}

variable "yourvar" {
    type = number
    description = "Number of days of training"
    default = 5
}

variable "newvar" {
    type = bool
    default = true
}


resource "null_resource" "operation1" {
    provisioner "local-exec" {
    command = "echo ${var.myvar} having schedule of ${var.yourvar} days and is trainer Pavan : ${var.newvar} >> file1.txt"
    }
}

# List Var

variable "users" {
type = list
default = ["user1","pavan","sam"]
description = "list of users on the server"
}

resource "null_resource" "operation2" {
    provisioner "local-exec" {
    command = "echo users are :${var.users[0]}, ${var.users[1]} and ${var.users[2]} on server >> file1.txt"
    }
}

# Map Var

variable "flavors" {
    type = map
    default = {
        "flavor1" = "1XCPU-1GB"
        "flavor2" = "2XCPU-4GB"
        "flavor9" = "8XCPU-64GB"
    }
    description = "Flavors we want for servers to users"
}

resource "null_resource" "operation3" {
    provisioner "local-exec" {
    command = "echo Configurations available for servers : ${var.flavors["flavor1"]} ,  ${var.flavors["flavor2"]},  ${var.flavors["flavor9"]} >> file1.txt"
    }
}
