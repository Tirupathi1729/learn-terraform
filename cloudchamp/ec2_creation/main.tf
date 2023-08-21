resource "aws_instance" "instance" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"

  tags = {
    Name = "1st_instance"
  }
}
