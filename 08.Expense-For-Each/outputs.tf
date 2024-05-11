output "instance_info" {
  value = aws_instance.this
}

output "public_ip" {
  value = aws_instance.this[*].public_ip
}