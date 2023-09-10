provider "aws" {
  access_key = ""
  secret_key = ""
  region     = ""
}

resource "aws_instance" "ec2" {
  ami           = ""
  instance_type = "t2.micro"
}