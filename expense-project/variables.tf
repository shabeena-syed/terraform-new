#ec2-variables
variable "image_id" {
    type = string
    default = "ami-041e2ea9402c46c32" #optional
    description = "RHEL-9 AMI ID" # opitional
  
}
variable "instance_type" {
    type = string
     default = "t3.micro"
  
}
variable "common_tags" {
    default = {
        Project = "expense"
        Environment = "Dev"   
    } 
}

variable "instance_names" {
    type = list
    default = ["backend","froentend","database"]
}

#sg-variable

variable "sg_name" {
    default = "allow-ssh"
   
 }

 variable "sg_description" {
    default = "allow-all"
   
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

 #route53 variable

 variable "zone_id" {
    default = "Z10248482NRJFVSBTWF2N"  
 }

 variable "domain_name" {
    default = "techzena.online"
   
 }




 


