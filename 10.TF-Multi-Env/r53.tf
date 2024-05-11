resource "aws_route53_record" "name" {
  for_each        = aws_instance.this
  zone_id         = var.zone_id
  name            = each.key == "fe-prod" ? var.domain_name : "${each.key}.${var.domain_name}"
  type            = "A"
  ttl             = 1
  records         = startswith(each.key, "fe") ? [each.value.public_ip] : [each.value.private_ip]
  allow_overwrite = true
}