output "publicsubnet1a" {
  value = aws_subnet.public_subneta.id
}

output "publicsubnet1b" {
  value = aws_subnet.public_subnetb.id
}

output "jenkinsg" {
  value = aws_security_group.jenkinssg.id
}

output "appsg" {
  value = aws_security_group.appsg.id
}
