resource "aws_instance" "terrafrontend" {
  ami                    = "ami-09e6f87a47903347c"
  instance_type          = "t3.small"
  vpc_security_group_ids = ["sg-025f5fd9e7683454e"]

  tags = {
    Name = "terrafrontend"
  }

  provisioner "remote-exec" {

    connection {
      type     = "ssh"
      user     = "ec2-user"
      password = "DevOps321"
      host     = self.public_ip
    }

    inline = [
      "pip3.11 install ansible",
      "ansible-pull -i localhost, -u https://github.com/phnkumar51/roboshop-shell1 roboshop.yml -e component_name=terrafrontend -e env -dev",
    ]
  }
}
resource "aws_route53_record" "terrafrontend" {
  zone_id = "Z00597101WWGD8AB8PV95"
  name    = "terrafrontend"
  type    = "A"
  ttl     = 10
  records = [aws_instance.terrafrontend.private_ip]
}