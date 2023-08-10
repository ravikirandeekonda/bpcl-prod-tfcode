provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "app1" {
  ami             = var.instami
  subnet_id       = var.pubsub1aid
  instance_type   = var.insttype
  key_name        = var.keypair
  security_groups = [var.security_groups]
  root_block_device {
    volume_size           = 20
    volume_type           = "gp3"
    delete_on_termination = true
  }

  tags = {
    Name = "Application Server From Jenkins"
  }
}
