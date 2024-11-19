resource "aws_route53_record" "expense" {
  for_each = aws_instance.expence
  zone_id  = var.zone_id
  name     = each.key == "frontend-prod" ? var.domain_name : "${each.key}.${var.domain_name}"
  #name = startswith(each.key, "frontend") ""
  type = "A"
  ttl  = 1
  #records = each.key == "frontend" ? [each.value.public_ip] : [each.value.private_ip]
  records = startswith(each.key, "frontend") ? [each.value.public_ip] : [each.value.private_ip]
  #records = local.route53_records
  # if records are already exists ,it will over write it 
  allow_overwrite = true
}