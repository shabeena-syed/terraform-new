resource "aws_security_group" "allow-ports" { #reference name and resource name should not be same
  name        = "allow-ports"
  description = "allowing 22,8080,3306 access"
 dynamic "ingress" {
    for_each = var.inbound_rules
    content{
      from_port        = ingress.value["port"] #each.value[<key-name>]
      to_port          = ingress.value["port"]
      protocol         = ingress.value["protocol"]
      cidr_blocks      = ingress.value["allowed_cidr"]   
   }
 }  
  egress {
     from_port        = 0 # all protocols opening
     to_port          = 0
     protocol         = "-1" # all proocols
     cidr_blocks      = ["0.0.0.0/0"]  
   }
  tags = {
     Name = "allow-ports"
     createdby = "shabeena"
   }
}