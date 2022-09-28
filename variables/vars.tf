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
