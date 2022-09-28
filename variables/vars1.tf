variable "trainer" {
    type = string
    description = "Trainer's Name"
}

variable "topic" {
    type = string
    description = "Training topic"
}

variable "duration" {
    type = number
    description = "Number of days"
}

resource "null_resource" "operation4" {
    provisioner "local-exec" {
        command = "echo Topic is ${var.topic} , Trainer is ${var.trainer} , Duration is ${var.duration} >> file1.txt"
    }
}

resource "null_resource" "operation5" {
    provisioner "local-exec" {
        command = "echo Topic is ${var.topic} , Trainer is ${var.trainer} , Duration is ${var.duration} >> file1.txt"
    }
}