provider "aws" {
    access_key = ""
    region = ""
    secret_key = ""
}

resource "aws_instance" "ec2" {
  ami = ""
  instance_type = "t2.micro"

  provisioner "remote-exec" {
    inline = [ 
        "sudo amazon-linux-extras install -y nginx1.12",
        "sudo systemctl start nginx",
     ]
  }
     connection {
       type = "ssh"
       user = "ec2-user" #default ec2 user name
       private_key = file("")
       host = self.public_ip
     }
}