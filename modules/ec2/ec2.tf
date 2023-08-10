provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "app1" {
  ami = "ami-0df7a207adb9748c7"
  subnet_id = "subnet-0e77eeb788c39c2e1"
  instance_type = "t2.micro"
  key_name = "ravikiran-keypair"
  security_groups = ["sg-0461d7ee44d378fc3"]
  root_block_device {
    volume_size = 10
    volume_type = "gp3"
    delete_on_termination = true
  }

  tags = {
    Name = "Application Server From Jenkins" 
  }
}
