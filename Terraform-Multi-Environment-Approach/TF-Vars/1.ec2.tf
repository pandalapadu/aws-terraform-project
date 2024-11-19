# Ec2 creation 
resource "aws_instance" "expence" {
  for_each      = var.instance_names #each.key and each.value repeated 
  ami           = data.aws_ami.ami_info.id
  instance_type = each.value
  # Left side values are called Arguments # Right side values are called values 
  key_name = "Demo-key"
  # subnet_id                   = aws_subnet.public-subnet.id
  vpc_security_group_ids      = ["${aws_security_group.allow_ssh.id}"]
  associate_public_ip_address = true
  tags = merge(
    var.common_tags,
    {
      Name        = "${each.key}.${var.environment}"
      Module      = "${each.key}.${var.environment}"
      Environment = var.environment
    }
  )
}

## Security Group 
resource "aws_security_group" "allow_ssh" {
  name        = var.sg_name
  description = var.sg_description
  # vpc_id      = aws_vpc.main.id
  ingress {
    from_port   = var.sg_from_port
    to_port     = var.sg_from_port
    protocol    = var.sg_protocal
    cidr_blocks = var.sg_cidr_block
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

