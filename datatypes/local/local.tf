provider "aws" {
  region = "us-southwest-1b"
  access_key = ""
  secret_key = ""
}

locals {
  common_tags {
    Owner = "Team1"
    Service = "Engineering"
  }
}

resource "aws_instance" "ec2" {
  ami = "ami-073998ba87e205747"
  instance_type = var.types["us-east-1"]
  tags = local.common_tags
}

resource "aws_ebs_volume" "ebs" {
  availability_zone = "us-southwest-1b"
  size = 10
  tags = local.common_tags

}