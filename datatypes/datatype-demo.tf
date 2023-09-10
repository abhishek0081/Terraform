provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_iam_user" "user" {
  name = var.user
  #    = var.userid
  path = "/system/"
}

output "user" {
  value = aws_iam_user.user.id
}
resource "aws_instance" "ec2" {
  ami           = "ami-073998ba87e205747"
  instance_type = var.types["us-east-1"]
}