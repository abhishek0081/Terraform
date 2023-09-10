variable "ports" {
    type = list(number)
    default = [ 8201, 8202, 8203, 8204, 9201 ]
}

resource "aws_security_group" "dynamic-block-demo" {
  name = "my-security-group"

  dynamic "ingress" {
    for_each = var.ports
    iterator = port
    content {
      from_port = port.value
      to_port = port.value
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}
