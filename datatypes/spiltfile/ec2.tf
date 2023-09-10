resource "aws_instance" "ec2" {
  ami           = "kfaskfha"
  instance_type = var.list[1]
}