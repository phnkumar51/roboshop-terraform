# roboshop-terraform
# To create an AWS Instance in Terraform - We need to add a resource
# Findout the code/syntax in terraform documentation

resource "aws_instance" "terrafrontend" {
ami           = ami-09e6f87a47903347c
instance_type = "t3.small"

tags = {
Name = "terrafrontend"
}
}
