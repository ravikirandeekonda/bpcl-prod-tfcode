
/*
resource "aws_instance" "app1" {
  ami = "ami-0874e7f6717a3cfd4"
  subnet_id = var.
  instance_type = "t2.micro"
  keypair = "bpcl-dev-keypair"
  security_groups = 

  root_block_device {
    volume_size = 10
    volume_type = "gp3"
    delete_on_termination = true
  }
}
*/