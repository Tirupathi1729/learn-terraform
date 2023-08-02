resource "aws_instance" "frontend" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0cd32fc66a74591e4"]

  tags = {
    Name = "frontend"
  }
}
resource "aws_route53_record" "frontend" {
  zone_id = "Z011249635V6ILR7WTU6W"
  name    = "frontend"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
  allow_overwrite = true              # if record already there destroy previous one and creates new record and updates ip address also
}

resource "aws_instance" "mongodb" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0cd32fc66a74591e4"]

  tags = {
    Name = "mongodb"
  }
}
resource "aws_route53_record" "mongodb" {
  zone_id = "Z011249635V6ILR7WTU6W"
  name    = "mongodb"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.private_ip]
  allow_overwrite = true              # if record already there destroy previous one and creates new record and updates ip address also
}
resource "aws_instance" "catalogue" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0cd32fc66a74591e4"]

  tags = {
    Name = "catalogue"
  }
}
resource "aws_route53_record" "catalogue" {
  zone_id = "Z011249635V6ILR7WTU6W"
  name    = "catalogue"
  type    = "A"
  ttl     = 30
  records = [aws_instance.catalogue.private_ip]
  allow_overwrite = true              # if record already there destroy previous one and creates new record and updates ip address also
}
resource "aws_instance" "redis" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0cd32fc66a74591e4"]

  tags = {
    Name = "redis"
  }
}
resource "aws_route53_record" "redis" {
  zone_id = "Z011249635V6ILR7WTU6W"
  name    = "redis"
  type    = "A"
  ttl     = 30
  records = [aws_instance.redis.private_ip]
  allow_overwrite = true              # if record already there destroy previous one and creates new record and updates ip address also
}
resource "aws_instance" "user" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0cd32fc66a74591e4"]

  tags = {
    Name = "user"
  }
}
resource "aws_route53_record" "user" {
  zone_id = "Z011249635V6ILR7WTU6W"
  name    = "user"
  type    = "A"
  ttl     = 30
  records = [aws_instance.user.private_ip]
  allow_overwrite = true              # if record already there destroy previous one and creates new record and updates ip address also
}
resource "aws_instance" "cart" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0cd32fc66a74591e4"]

  tags = {
    Name = "cart"
  }
}
resource "aws_route53_record" "cart" {
  zone_id = "Z011249635V6ILR7WTU6W"
  name    = "cart"
  type    = "A"
  ttl     = 30
  records = [aws_instance.cart.private_ip]
  allow_overwrite = true              # if record already there destroy previous one and creates new record and updates ip address also
}
resource "aws_instance" "mysql" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0cd32fc66a74591e4"]

  tags = {
    Name = "mysql"
  }
}
resource "aws_route53_record" "mysql" {
  zone_id = "Z011249635V6ILR7WTU6W"
  name    = "mysql"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
  allow_overwrite = true              # if record already there destroy previous one and creates new record and updates ip address also
}
resource "aws_instance" "shipping" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0cd32fc66a74591e4"]

  tags = {
    Name = "shipping"
  }
}
resource "aws_route53_record" "shipping" {
  zone_id = "Z011249635V6ILR7WTU6W"
  name    = "shipping"
  type    = "A"
  ttl     = 30
  records = [aws_instance.shipping.private_ip]
  allow_overwrite = true              # if record already there destroy previous one and creates new record and updates ip address also
}
resource "aws_instance" "rabbitmq" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0cd32fc66a74591e4"]

  tags = {
    Name = "rabbitmq"
  }
}
resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z011249635V6ILR7WTU6W"
  name    = "rabbitmq"
  type    = "A"
  ttl     = 30
  records = [aws_instance.rabbitmq.private_ip]
  allow_overwrite = true              # if record already there destroy previous one and creates new record and updates ip address also
}
resource "aws_instance" "payment" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0cd32fc66a74591e4"]

  tags = {
    Name = "payment"
  }
}
resource "aws_route53_record" "payment" {
  zone_id = "Z011249635V6ILR7WTU6W"
  name    = "payment"
  type    = "A"
  ttl     = 30
  records = [aws_instance.payment.private_ip]
  allow_overwrite = true              # if record already there destroy previous one and creates new record and updates ip address also
}