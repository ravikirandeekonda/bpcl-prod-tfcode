
resource "aws_instance" "app1" {
  ami = "ami-0df7a207adb9748c7"
  subnet_id = var.pubsub1aid
  instance_type = "t2.micro"
  key_name = "ravikiran-keypair"
  security_groups = [var.security_groups]

  root_block_device {
    volume_size = 10
    volume_type = "gp3"
    delete_on_termination = true
  }

  tags = {
    Name = "Application Server From Jenkins" 
  }
}
