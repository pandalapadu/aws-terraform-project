# Ec2 creation 
resource "aws_instance" "web" {
  ami               = var.image_id
  availability_zone = "ap-south-1a"
  #instance_type     = var.instance_name 
  # by using condtions we write below 
  instance_type = var.instance_name == "web" ? "t3.medium" : "t2.micro"
  # Left side values are called Arguments # Right side values are called values 
  key_name = "Demo-key"
  # subnet_id                   = aws_subnet.public-subnet.id
  #vpc_security_group_ids      = ["${aws_security_group.sg.id}"]
  # If i have not passed any Security group it will take default values from default VPC 
  associate_public_ip_address = true
  tags                        = var.tags
}
