variable "data" {
  default = "ami-03265a0778a880afb"

}
variable "data1" {
  default = "t2.micro"

}

module "variable" {
  source = "./ec2"
}
