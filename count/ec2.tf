resource "aws_instance" "db" {
  ami           = "ami-041e2ea9402c46c32" 
  instance_type = "t3.micro"
 # count = length(var.instance_names) # length function length([])
  vpc_security_group_ids = [aws_security_group.allow-ssh.id]

  #
}

# sg
#resource , <resource-type> , <resource-name>
resource "aws_security_group" "allow-ssh" { #reference name and resource name should not be same
  name        = "allow-all"
  description = "allowing ssh"
  

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }
  egress {
    from_port        = 0 # all protocols opening
    to_port          = 0
    protocol         = "-1" # all proocols
    cidr_blocks      = ["0.0.0.0/0"]
   
  }

  tags = {
    Name = "allow-ssh"
    createdby = "shabeena"
  }
}






