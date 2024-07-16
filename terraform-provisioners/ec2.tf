resource "aws_instance" "db" {
  ami           = "ami-041e2ea9402c46c32"
  vpc_security_group_ids = ["sg-0eceb38ccacaf971a"]
  instance_type = "t3.micro"

  # provisioners will run whn ur creating resources .they willnot run once the resources got crated

  provisioner "local-exec" {
    command = "echo ${self.private_ip} > private_ips.txt" # self is aws_instance.db
  }
#   provisioner "local-exec" {
#     command = "Ansible-playbook -i private_ips.txt web.yaml"

#   }
  connection {
    type     = "ssh"
    user     = "ec2-user"
    password = "DevOps321"
    host     = self.public_ip
  }
  provisioner "remote-exec" {
    inline = [
      "sudo dnf install ansible -y",  #list of commands
      "sudo dnf install nginx -y",
      "sudo systemctl start nginx"
    ]
  }

   
  
}