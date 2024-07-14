 # ec2
resource "aws_instance" "db" {
  ami = var.image_id
  vpc_security_group_ids = [aws_security_group.allow-ssh.id] # we can define created resource
  instance_type = var.instance_type
  #left side are arguments and right side are values.

  tags = var.tags
}

#sg
resource "aws_security_group" "allow-ssh" {
  name        = "allow-ssh"
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




