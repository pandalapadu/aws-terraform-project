# Ec2 creation 
resource "aws_instance" "web" {
  ami               = var.image_id
  availability_zone = "ap-south-1a"
  instance_type     = var.instance_type
  # Left side values are called Arguments # Right side values are called values 
  key_name = "Demo-key"
  # subnet_id                   = aws_subnet.public-subnet.id
  vpc_security_group_ids      = ["${aws_security_group.sg.id}"]
  associate_public_ip_address = true
  tags                        = var.tags
}


## Security Group 
resource "aws_security_group" "sg" {
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

