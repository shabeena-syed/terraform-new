 # ec2
resource "aws_instance" "db" {
  ami = var.image_id
  vpc_security_group_ids = [aws_security_group.allow_ssh.id] # we can define created resource
  instance_type = var.instance_type
  #left side are arguments and right side are values.

  tags = var.tags
}

#sg
resource "aws_security_group" "allow_ssh" { # this name is the purpose of our own identification
  name        = var.sg_name # should be same as tag Name
  description = var.sg_description
  
  ingress { # this is block
    from_port        = var.ssh_port
    to_port          = var.ssh_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr_blocks
  }
  egress {
    from_port        = var.ssh_port # all protocols opening
    to_port          = var.ssh_port
    protocol         = var.protocol # all proocols
    cidr_blocks      = var.cidr_blocks 
  }

  tags = {
    Name = "allow 22" # same as name
    createdby = "shabeena"
  }
}




