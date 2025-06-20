resource "aws_instance" "instances" {
    ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = var.name
  }

}
#
resource "aws_route53_record" "records" {
  #for_each = var.instances
  zone_id = var.zone_id
  name    = "${var.name}-${var.env}"
  type    = "A"
  ttl     = 10
  records = [aws_instance.instances.private_ip]
}


resource "null_resource" "catalogue" {
  depends_on = [aws_route53_record.records]
  provisioner "remote-exec" {

    connection {
      type     = "ssh"
      user     = "ec2-user"
      password = "DevOps321"
      host     = aws_instance.instances.private_ip
    }

    inline = [
      "sudo pip3.11 install ansible",
      "ansible-pull -i localhost, -u https://github.com/phnkumar51/roboshop-ansible roboshop.yml -e component_name=$(var.name) -e env=$(var.dev)",
    ]
  }
}

