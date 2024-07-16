variable "image_id" {
    type = string
    default = "ami-041e2ea9402c46c32"
    description = "RHEL-9 AMI ID" # opitional
  
}
variable "instance_type" {
    type = string
     #default = "t3.micro"
  
}
variable "tags" {
    default = {
        Project = "expense"
        Environment = "Dev"
        Module = "DB"
        Name = "DB"
    } 
}
# sg variables
 variable "sg_name" {
    default = "ssh-sg"
   
 }

 variable "sg_description" {
    default = "allowing-ssh "
   
 }
 variable "ssh_port" {
   
   type = number
   default = 22
 }
 variable "protocol" {
    type = string
    default = "tcp"
   
 }

 variable "cidr_blocks" {
    type = list
    default = ["0.0.0.0/0"]
 }

 

 


    
  
