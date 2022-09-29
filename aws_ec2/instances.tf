resource "aws_instance" "myinstance1"  {
   ami = "${var.aminame["${var.my_region}"]}"
   instance_type = "t2.micro"
   subnet_id = aws_subnet.mysubnet1.id
   vpc_security_group_ids = ["${aws_security_group.mysg1.id}"]
   key_name = "test"                    #  if you want ssh access Generate the key manually from webConsole  
   user_data = <<-EOF
     #!/bin/bash
     sudo apt update
     sudo apt install apache2 -y
     echo "Hello all from Pavan" > /var/www/html/index.html
     sudo systemctl restart apache2
     sudo systemctl enable apache2
     EOF
   tags = {
Name = "Satya-Instance"
   }
}
