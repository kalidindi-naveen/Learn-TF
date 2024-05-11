resource "aws_instance" "this" {
    ami = "ami-090252cbe067a9e58"
    vpc_security_group_ids = [aws_security_group.this.id]
    instance_type = "t3.micro"
    tags = {
        Name = "db"
    }
}