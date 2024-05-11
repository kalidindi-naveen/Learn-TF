resource "aws_instance" "db" {
  count                  = 3
  ami                    = var.image_id
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  instance_type          = var.instance_name == "db" ? "t3.small" : "t3.micro"
  # left side things are called as arguements, right side are values.
  tags = var.tags
}

resource "aws_security_group" "allow_ssh" {
  name        = var.sg_name
  description = var.sg_description

  # this is block
  ingress {
    from_port   = var.ssh_port
    to_port     = var.ssh_port
    protocol    = var.protocol
    cidr_blocks = var.allowed_cidr
  }

  egress {
    from_port   = 0 # from 0 to 0 means, opening all protocols
    to_port     = 0
    protocol    = "-1" # -1 all protocols
    cidr_blocks = var.allowed_cidr
  }

  tags = {
    Name      = "allow_ssh"
    CreatedBy = "NK"
  }
}