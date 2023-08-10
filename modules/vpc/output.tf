output "publicsubnet1a" {
  value = aws_subnet.public_subneta.id
}

output "jenkinsg" {
  value = aws_security_group.jenkinssg.id
}
