resource "aws_route53_record" "www" {
  zone_id = var.zone_id
  count = length(var.instance_names)
  name    = var.instance_names[count.index] == "froentend" ? var.domain_name : "${var.instance_names[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  # count and count.index will not work in locals
  records = [aws_instance.expense[count.index]] == "froentend" ? [aws_instance.expense[count.index].public_ip] : [aws_instance.expense[count.index].private_ip]
  
  #if records already exist
  allow_overwrite = true
}