resource "aws_instance" "this" {
  ami                    = data.aws_ami.this.id
  vpc_security_group_ids = ["sg-0d252c8914c14d476"]
  instance_type          = var.instance_type

  # provisioners will run when you are creating resources
  # They will not run once the resources are created
  provisioner "local-exec" {
    command = "echo ${self.private_ip} > IP.txt"
  }

  provisioner "local-exec" {
    command = "ansible-playbook -i IP.txt web.yml"
  }
}