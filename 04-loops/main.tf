variable "components"{
  default = ["Tirupathi","frontend","mongodb"]
}
#resource "aws_instance" "instances" {
#  count = length(var.components)
#  ami           = "ami-03265a0778a880afb"
#  instance_type = "t2.micro"
#  vpc_security_group_ids = ["sg-0cd32fc66a74591e4"]
#
#  tags = {
#    Name = element(var.components,count.index)
#  }
#}
resource "aws_security_group" "allow_all" {
  count = length(var.components)
  name = element(var.components,count.index)
}