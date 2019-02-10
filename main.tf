resource "aws_instance" "app1" {
  instance_type = "t2.micro"
  availability_zone= "us-east-1a"
   ami             = "ami-0c65e40a4d03e169c"


   user_data = <<-EOF
               #!/bin/bash
               sudo service apache2 start
               EOF
 }
