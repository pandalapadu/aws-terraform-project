# Ec2 creation 
resource "aws_instance" "web" {
  ami               = var.ami_id
  availability_zone = "ap-south-1a"
  instance_type     =  var.instance_type
  # Left side values are called Arguments # Right side values are called values 
  key_name = "Demo-key"
  # subnet_id                   = aws_subnet.public-subnet.id
 # vpc_security_group_ids      = ["${aws_security_group.sg.id}"]
  associate_public_ip_address = true
  tags                        = var.tags
}