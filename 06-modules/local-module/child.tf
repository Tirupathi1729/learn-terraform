data "aws_ami_ids" "ami" {
  name_regex = "centos"
  owners = ["973714476881"]
}
output "ami" {
  value = data.aws_ami_ids.ami
}

data "aws_ami_ids" "amis" {
  name_regex = "centos"
  owners = ["973714476881"]
}
output "ami1" {
  value = data.aws_ami_ids.amis
}




data "aws_ami" "ami" {
  most_recent = true
  name_regex = "Centos-8-DevOps-Practice"
  owners = ["973714476881"]
}
output "one_ami" {
  value = data.aws_ami.ami
}
resource "aws_instance" "instances" {

  ami           = data.aws_ami.ami.id
  instance_type = var.instance_type
  vpc_security_group_ids = ["sg-0cd32fc66a74591e4"]

}
variable "instance_type" {}     # access