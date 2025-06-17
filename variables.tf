variable "ami_id"{
  default = "ami-09e6f87a47903347c"
}

variable "instance_type"{
  default = "t3.small"
}

variable "vpc_security_group_ids"{
  default = ["sg-025f5fd9e7683454e"]
}

variable "instances" {
  default = [
  "frontend",
  "mongodb",
  "catalogue"]
}