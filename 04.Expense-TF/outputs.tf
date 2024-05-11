output "instance_info" {
  value = aws_instance.expense
}

output "public_ip" {
  value = aws_instance.expense[*].public_ip
}