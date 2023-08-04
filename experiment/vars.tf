resource "aws_instance" "instance" {
  ami = var.amid_id
  instance_type = var.instance_type
}
variable "amid_id" {
  default = "ami-03265a0778a880afb"
}
variable "instance_type" {
  default = "t2.micro"
}