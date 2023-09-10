provider "aws" {
  region = ""
  access_key = ""
  secret_key = ""
}

# resource "aws_iam_user" "user" {
#   name = ""
# #    = var.userid
#   path = "/system/"
# }

# output "user" {
#   value = aws_iam_user.user.id
# }

variable "flag" {
  
}
resource "aws_instance" "env1" {
  ami = "ami-073998ba87e205747"
  instance_type = "t2.micro"
  count = var.flag == true ? 2 :0
}
resource "aws_instance" "env2" {
  ami = "ami-073998ba87e205747"
  instance_type = "t2.micro"
  count = var.flag == false ? 1 :0
}