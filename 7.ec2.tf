resource "aws_instance" "web" {
  ami = "ami-0dee22c13ea7a9a67"
  availability_zone = "ap-south-1a"
  instance_type = "t2.micro"
  key_name = "Demo-key"
  subnet_id = aws_subnet.public-subnet.id
  vpc_security_group_ids = [ "${aws_security_group.sg.id}" ]
  associate_public_ip_address = true
  tags = {
    name = "WebServer-1"
    Env = "Dev"
    owner = "Venkat"
  }
}