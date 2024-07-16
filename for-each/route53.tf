resource "aws_route53_record" "expense" {
  zone_id = var.zone_id
  for_each = aws_instance.expense
  
  name    = each.key == "froentend" ? var.domain_name : "${each.key}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  # count and count.index will not work in locals
  records = each.key == "froentend" ? [each.value.public_ip] : [each.value.private_ip]
  
  #if records already exist
  allow_overwrite = true
}