variable "image_id" {
    type = string
    default = "ami-041e2ea9402c46c32" #optional
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
variable "instance_name" {
    default = "backend"
  
}