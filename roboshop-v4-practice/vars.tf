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
      instance_type="t3.small"
    }
    mongodb={
      name="mongodb"
      instance_type="t3.small"
    }
    catalogue={
      name="catalogue"
      instance_type="t3.small"
    }
    redis={
      name="redis"
      instance_type="t3.small"
    }
    user={
      name="user"
      instance_type="t3.small"
    }
    cart={
      name="cart"
      instance_type="t3.small"
    }
    mysql={
      name="mysql"
      instance_type="t3.small"
    }
    shipping={
      name="shipping"
      instance_type="t3.small"
    }
    rabbitmq={
      name="rabbitmq"
      instance_type="t3.small"
    }
    payment={
      name="payment"
      instance_type="t3.small"
    }
  }
}