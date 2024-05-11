resource "aws_instance" "this" {
  ami                    = data.aws_ami.this.id
  vpc_security_group_ids = ["sg-0d252c8914c14d476"]
  instance_type          = lookup(var.instance_type, terraform.workspace)
}