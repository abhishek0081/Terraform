variable "access_key" {
  description = "Please provide your access key"
}
variable "secret_key" {
  description = "Please provide your secret key"
}
variable "region" {
  description = "please specify your deployment region."
}
variable "user" {
  type        = string
  description = "Name of the user"
}
variable "userid" {
  type        = number
  description = "Please enter your userId"
}
variable "elb_name" {
  type        = string
  description = "Name of the load balancer"
}
variable "azs" {
  type        = list(string)
  description = "Specify one list of servers for load balancer"
}
variable "timeout" {
  type        = number
  description = "Instance timeout"
}
variable "types" {
  type = map(any)
  default = {
    "us-east-1"  = "t2.micro"
    "us-east-2"  = "t2.small"
    "us-south-1" = "t2.nano"
  }
}