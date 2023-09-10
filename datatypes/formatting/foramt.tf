provider "aws" {
  region     = ""
  access_key = "var.access_key"
  secret_key = "var.secret_key"
}


resource "aws_instance" "ec2" {
  ami           = "ami-073998ba87e205747"
  instance_type = "t2.micro"
}