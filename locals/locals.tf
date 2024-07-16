locals {
    ami_id = "ami-041e2ea9402c46c32"
    sg_id = "sg-0eceb38ccacaf971a" 
    #instance_type = "t3.micro"
    instance_type = var.instance_name == "db" ? "t3.small" : "t3.micro"

     tags = {
        Name = "locals"
     } 
}
