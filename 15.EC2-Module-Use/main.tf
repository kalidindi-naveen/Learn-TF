module "ec2-made-easy" {
  source                 = "kalidindi-naveen/Learn-TF/14.EC2-Module"
  version                = "main"
  ami                    = data.aws_ami.this.id
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-0d252c8914c14d476"]
  tags = {
    Name      = "EC2-MADE-EASY",
    terraform = "true"
  }
}