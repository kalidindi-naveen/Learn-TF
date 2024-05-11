/**
inbound -- allow everything or allow only port no 22.
outbound -- allow everything
*/

resource "aws_security_group" "this" {
  name        = "allow_ssh"
  description = "allowing SSH access"

  #terraform block
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0 # from 0 to 0 means, opening all protocols
    to_port     = 0
    protocol    = "-1" # -1 all protocols
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name      = "allow_ssh"
    CreatedBy = "NK"
  }
}