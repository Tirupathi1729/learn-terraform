variable "amid_id" {
  default = "ami-03265a0778a880afb"
}
variable "instance_type" {
  default = "t2.micro"
}
variable "security_group" {
  default = ["sg-0cd32fc66a74591e4"]
}

variable "zone_id" {
  default = "Z011249635V6ILR7WTU6W"
}
variable "components" {
  default = {
    frontend={name="frontend"}
    mongod={name="mongodb"}
    catalogue={name="catalogue"}
    redis={name="redis"}
    user={name="user"}
    cart={name="cart"}
    mysql={name="mysql"}
    shipping={name="shipping"}
    rabbitmq={name="rabbitmq"}
  }
}
resource "aws_instance" "instance" {
  for_each = var.components
  ami           = var.amid_id
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_group

  tags = {
    Name = lookup(each.value,"name",null )
  }
}
resource "aws_route53_record" "record" {
  for_each = var.components
  zone_id = var.zone_id
  name    = "${lookup(each.value,"name",null)}"
  type    = "A"
  ttl     = 30
  records = [lookup(lookup(aws_instance.instance,each.key,null),"private_ip",null)]
  #allow_overwrite = true              # if record already there destroy previous one and creates new record and updates ip address also
}
