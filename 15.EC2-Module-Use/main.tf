module "ec2-made-easy" {
  source                 = "github.com/kalidindi-naveen/Learn-TF//14.EC2-Module"
  # -- OR-- github.com/kalidindi-naveen/Learn-TF.git//14.EC2-Module?ref=main
  ami                    = data.aws_ami.this.id
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-0d252c8914c14d476"]
  tags = {
    Name      = "EC2-MADE-EASY",
    terraform = "true"
  }
}