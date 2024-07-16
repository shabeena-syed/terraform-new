resource "aws_instance" "db" {
  ami           = local.ami_id
  vpc_security_group_ids = [local.sg_id]
  instance_type = var.instance_name == "db" ? "t3.small" : "t3.micro"

  tags = local.tags
    
  
}