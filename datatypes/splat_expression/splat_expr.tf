provider "aws" {
  access_key = ""
  secret_key = ""
  region = ""
}
resource "aws_iam_user" "resource1" {
  name = "iamuser.${count.index}"
  count = 3
}
output "arns" {
    value = aws_iam_user.resource1[*].arn
}