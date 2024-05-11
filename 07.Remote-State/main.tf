resource "aws_instance" "db" {
  ami                    = "ami-090252cbe067a9e58"
  vpc_security_group_ids = ["sg-0d252c8914c14d476"]
  instance_type          = "t2.micro"
}