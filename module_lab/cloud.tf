module "myaws1" {
        source = "./aws"
        name1 = "bucket-lunch-time-satya"              # ==> this is variable we are passing 
}

module "myazure1" {
        source = "./azure"
}
