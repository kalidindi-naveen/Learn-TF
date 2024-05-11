locals {
  ami_id = data.aws_ami.ami_id
  sg_id  = "sg-0d252c8914c14d476"
  #instance_type = "t3.micro"
  instance_type = var.instance_name == "db" ? "t3.small" : "t3.micro"
  tags = {
    Name = "data-source"
  }
}