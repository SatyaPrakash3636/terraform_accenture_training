resource "null_resource" "oper1" {
    provisioner "local-exec" {
    command = "echo 'Hello alll I am running' >> training.txt"
    }
}

resource "null_resource" "oper2" {
    provisioner "local-exec" {
    command = "echo 'Hello alll I am running in opt2' >> training.txt"
    }
}

resource "null_resource" "runscript" {
    provisioner "local-exec" {
    command = "sh myscript.sh"
    }
}
