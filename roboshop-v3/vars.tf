variable "security_groups" {
  default = ["sg-0cd32fc66a74591e4"]
}
variable "zone_id" {
  default = "Z011249635V6ILR7WTU6W"
}
variable "components" {
  default = {
    frontend={
      name="frontend"
      instance_type="t2.micro"
    }
    mongodb={
      name="mongodb"
      instance_type="t2.micro"
    }
  }
}