variable "ami" {
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
    frontend={name="frontend-dev"}
    mongod={name="mongodb-dev"}
    catalogue={name="catalogue-dev"}
    redis={name="redis-dev"}
    user={name="user-dev"}
    cart={name="cart-dev"}
    mysql={name="mysql-dev"}
    shipping={name="shipping-dev"}
    rabbitmq={name="rabbitmq-dev"}
    payment={name="payment-dev"}
  }
}
resource "aws_instance" "instance" {
  for_each = var.components
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_group

  tags = {
    Name = lookup(each.value,"name",null )
  }
}
resource "aws_route53_record" "record" {
  for_each = var.components
  zone_id = var.zone_id
  name    = "${lookup(each.value,"name",null)}.tirupathib74.online"
  type    = "A"
  ttl     = 30
  records = [lookup(lookup(aws_instance.instance,each.key,null),"private_ip",null)]
  #allow_overwrite = true              # if record already there destroy previous one and creates new record and updates ip address also
}
