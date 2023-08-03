resource "aws_instance" "ec2" {
  ami = "var.data"
  instance_type = "var.data1"
}
