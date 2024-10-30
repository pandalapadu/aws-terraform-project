resource "aws_route53_record" "expense" {
  count   = length(var.instance_names) # here we can see frontend # 
  zone_id = var.zone_id
  name    = var.instance_names[count.index] == "frontend" ? var.domain_name : "${var.instance_names[count.index]}.${var.domain_name}"
  #name = local.records_name
  # if above condition "frontend" matches then condition apply  
  type    = "A"
  ttl     = 1
  records = [aws_instance.expence[count.index]] == "frontend" ? [aws_instance.expence[count.index].public_ip] : [aws_instance.expence[count.index].private_ip]
  #records = local.route53_records
  # if records are already exists ,it will over write it 
  allow_overwrite = true 
}