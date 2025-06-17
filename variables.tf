variable "vpc_security_group_ids"{
  default = ["sg-025f5fd9e7683454e"]
}

variable "instances" {
  default = {
    frontend = {
  ami_id        = "ami-09e6f87a47903347c"
  instance_type = "t3.small"
}
   mongodb = {
  ami_id        = "ami-09e6f87a47903347c"
  instance_type = "t3.small"
}
   catalogue = {
  ami_id        = "ami-09e6f87a47903347c"
  instance_type = "t3.micro"
}
#    mongodb = null
#    frontend = null
#    catalogue = null
}
}

variable "zone_id" {
  default = "Z00597101WWGD8AB8PV95"
}

variable "env" {
  default = "dev"
}