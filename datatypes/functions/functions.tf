provider "aws" {
  region = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

locals {
  time = formatdate("DD MM YYYY hh:mm ZZZ", timestamp())
}

variable "region" {
  default = "ap-southeast-1"
}

variable "ami" {
  type = map
  default = {
    "us-east-1" = "ami-073998ba87e205747"  #grab ami from ec2  -> launch instance
    "us-west-1" = "ami-073998ba87e205747"  # change region and grab the ami id 
    "ap-south-1" = "ami-073998ba87e205747"
  }
}

resource "aws_instance" "ec2" {
  ami = lookup(var.ami,var.region)
  instance_type = "t2.micro"
}

output "timestamp" {
  value = local.time
}