variable "vmami" {
  default     = "ami-0df7a207adb9748c7"
  type        = string
  description = "Ubuntu 22.04"
}

variable "vmtype" {
  default     = "t3a.medium"
  type        = string
  description = "Instance Type"
}

variable "keypair" {
  default = "ravikiran-keypair"
  type    = string
}

variable "jenkinsg" {
  default = "sg-0838825c65ead1e16"
  type    = string
}

variable "publicsubent1a" {
  default = "subnet-0db733200ebd282ec"
  type    = string
}