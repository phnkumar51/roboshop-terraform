resource "aws_instance" "instances" {
  count = length(var.instances)
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = var.instances[count.index]
  }

}
#
resource "aws_route53_record" "records" {
  count = length(var.instances)
  zone_id = var.zone_id
  name    = "${var.instances[count.index]}-${var.env}"
  type    = "A"
  ttl     = 10
  records = [aws_instance.instances[count.index].private_ip]
}


