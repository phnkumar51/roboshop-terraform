variable "ami_id"{}
variable "name"{}
variable "instance_type"{}
variable "vpc_security_group_ids"{}
variable "zone_id"{}
variable "env"{}













#resource "aws_instance" "instances" {
#  for_each = var.instances
#  ami                    = each.value["ami_id"]
#  instance_type          = each.value["instance_type"]
#  vpc_security_group_ids = var.vpc_security_group_ids
#
#  tags = {
#    Name = each.key
#  }
#
#}
##
#resource "aws_route53_record" "records" {
#  for_each = var.instances
#  zone_id = var.zone_id
#  name    = "${each.key}-${var.env}"
#  type    = "A"
#  ttl     = 10







#variable "zone_id" {
#  default = "Z00597101WWGD8AB8PV95"
#}
#
#variable "env" {
#  default = "dev"
#}