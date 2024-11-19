# # Ec2 creation 
# resource "aws_instance" "expence" {
#   for_each = var.instance_names #each.key and each.value repeated 
#   ami           = var.image_id
#   instance_type = each.value
#   # Left side values are called Arguments # Right side values are called values 
#   key_name = "Demo-key"
#   # subnet_id                   = aws_subnet.public-subnet.id
#   vpc_security_group_ids      = ["${aws_security_group.allow_ssh.id}"]
#   associate_public_ip_address = true
#   tags = merge(
#     var.common_tags,
#     {
#       Name   = each.key
#       Module = each.key
#     }
#   )
# }
