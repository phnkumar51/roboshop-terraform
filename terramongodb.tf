resource "aws_instance" "terramongodb" {
  ami           = "ami-09e6f87a47903347c"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-025f5fd9e7683454e"]

  tags = {
    Name = "terramongodb"
  }


provisioner "remote-exec" {

  connection {
    type     = "ssh"
    user     = "ec2-user"
    password = "DevOps321"
    host     = self.public_ip
  }

  inline = [
    "sudo pip3.11 install ansible",
    "ansible-pull -i localhost, -u https://github.com/phnkumar51/roboshop-ansible roboshop.yml -e component_name=terramongodb -e env=dev",
  ]
}
}
resource "aws_route53_record" "terramongodb" {
  zone_id = "Z00597101WWGD8AB8PV95"
  name    = "terramongodb-dev"
  type    = "A"
  ttl     = 10
  records = [aws_instance.terramongodb.private_ip]
}