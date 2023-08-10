output "publicsubnet1a" {
  value = aws_subnet.public_subneta.id
}

output "app1sg" {
  value = aws_security_group.app1sg.id
}
