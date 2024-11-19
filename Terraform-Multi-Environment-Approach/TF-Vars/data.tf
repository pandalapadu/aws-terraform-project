data "aws_ami" "ami_info" {
  most_recent = true
  owners      = ["211125635488"]
  filter {
    name   = "name"
    values = ["ami-0dee22c13ea7a9a67"]
  }
  filter {
    name   = "Root-device-type"
    values = ["ebs"]
  }
  filter {
    name   = "Virtualization-type"
    values = ["hvm"]
  }
}