resource "aws_instance" "JenkinsVM" {
  ami             = var.vmami
  instance_type   = var.vmtype
  subnet_id       = var.publicsubent1a
  key_name        = var.keypair
  vpc_security_group_ids = [ var.jenkinsg ]
  root_block_device {
    volume_size           = 20
    volume_type           = "gp3"
    delete_on_termination = false
    encrypted             = true
  }
  user_data = file("/var/lib/jenkins/workspace/terraform-pipeline/modules/ec2/jenkins-dependencies.sh")
  tags = {
    Name = "AWS-Jenkins-VM-DO-NOT-DELETE"
  }
}

resource "aws_eip" "jeip" {
  instance = aws_instance.JenkinsVM.id
  domain   = "vpc"
  tags = {
    Name = "Jenkins-EIP"
  }
}

