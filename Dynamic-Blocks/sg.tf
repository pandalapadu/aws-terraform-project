## Security Group 
resource "aws_security_group" "allow_ports" {
  name        = "Allow_Ports"
  description = "allowing 22,80,8080,3306 access"
  # vpc_id      = aws_vpc.main.id
  dynamic "ingress" {
    for_each = var.inbound_rules
    content {
    from_port   = ingress.value["port"] #each.value of [Key name]
    to_port     = ingress.value["port"]
    protocol    = ingress.value["protocol"]
    cidr_blocks = ingress.value["allowed_cidr"]
    }
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Security-Group"
  }
}