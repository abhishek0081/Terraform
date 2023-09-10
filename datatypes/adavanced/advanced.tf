provider "aws" {
  access_key = ""
  secret_key = ""
  region     = ""
}

resource "aws_security_group" "allow_port22" {
  name = "alow_port22"

  ingress = {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }

  egress = {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "ec2-demo" {
  ami                    = ""
  instance_type          = "t2.micro"
  key_name               = "My_key"
  vpc_security_group_ids = [aws_security_group.allow_port22.id]

  provisioner "remote-exec" {
    inline = [
      "sudo yum -y install nano"
    ]
  }

  provisioner "remote-exec" {
    when = destroy
    inline = [
      "sudo yum -y remove nano"
    ]
  }

  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("")
    host        = self.public_ip
  }
}