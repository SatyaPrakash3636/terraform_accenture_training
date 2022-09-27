terraform {
  required_providers {
    linux = {
      source = "mavidser/linux"
      version = "1.0.2"
    }
  }
}

provider "linux" {
    host = "172.20.0.135"
    user = "root"
    password = "rps@12345"
    port = 22
}

resource "linux_user" "usercreation1" {
    name = "pavan"
    uid = 3000
}

resource "linux_file" "filecreation1" {
    path = "/tmp/automation.txt"
    permissions = "666"
    owner = "${linux_user.usercreation1.name}:${linux_user.usercreation1.name}"              # ⇒ we can have “rps:rps”
}
