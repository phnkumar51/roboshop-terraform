resource "aws_instance" "terrafrontend" {
  ami           = ami-09e6f87a47903347c
  instance_type = "t3.small"

  tags = {
    Name = "terrafrontend"
  }
}