variable "vpc_cidr" {
  default = "10.0.0.0/16"
  type    = string
}

variable "pub_sub_cidra" {
  default = "10.0.1.0/24"
  type    = string
}

variable "pub_sub_cidrb" {
  default = "10.0.2.0/24"
  type    = string
}

variable "az_1a" {
  default = "ap-southeast-1a"
  type    = string
}

variable "az_1b" {
  default = "ap-southeast-1b"
  type    = string
}

