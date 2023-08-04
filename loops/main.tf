variable "components"{
  default = ["frontend","mongodb"]
}
resource "aws_instance" "instances" {
  count = length(var.components)
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0cd32fc66a74591e4"]

  tags = {
    Name = element(var.components,count.index)
  }
}