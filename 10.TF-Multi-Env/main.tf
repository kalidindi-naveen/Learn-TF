resource "aws_instance" "this" {
  for_each               = var.instance_names #each.key & each.value
  ami                    = data.aws_ami.this.id
  vpc_security_group_ids = ["sg-0d252c8914c14d476"]
  instance_type          = each.value
  tags = merge(
    var.common_tags,
    {
      Name        = "${each.key}"
      Module      = "${each.key}"
      Environment = var.environment
    }
  )
}