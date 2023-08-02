resource "aws_instance" "Tirupathi" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0cd32fc66a74591e4"]

  tags = {
    Name = "Tirupathi"
  }
}
resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z011249635V6ILR7WTU6W"
  name    = "Tirupathi"
  type    = "A"
  ttl     = 30   # Time To Live
  records = [aws_instance.Tirupathi.private_ip]
  allow_overwrite = true              # if record already there destroy previous one and creates new record and updates ip address also
}