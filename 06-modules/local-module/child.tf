data "aws_ami_ids" "ami" {
  name_regex = "centos"
  owners = ["973714476881"]
}
output "ami" {
  value = data.aws_ami_ids.ami
}

data "aws_ami_ids" "ami" {
  name_regex = "centos"
  owners = ["973714476881"]
}
output "ami1" {
  value = data.aws_ami_ids.ami
}
