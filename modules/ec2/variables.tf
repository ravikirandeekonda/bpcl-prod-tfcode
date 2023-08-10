variable "pubsub1aid" {
  default = "subnet-0e77eeb788c39c2e1"
  type    = string
}

variable "security_groups" {
  default = "sg-0461d7ee44d378fc3"
  type    = string
}

variable "instami" {
  default = "ami-0df7a207adb9748c7"
  type    = string
}

variable "insttype" {
  default = "t2.micro"
  type    = string
}

variable "keypair" {
  default = "ravikiran-keypair"
  type    = string
}