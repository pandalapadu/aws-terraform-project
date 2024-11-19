# Ec2 creation 
resource "aws_instance" "web" {
 # count                  = 3
  ami                    = "ami-0dee22c13ea7a9a67"
  instance_type          = "t2.micro"
 # vpc_security_group_ids = ["aws_security_group.sg.id"]
  # tags = {
  #   Name = var.instance_names[count.index]
  # }
}

