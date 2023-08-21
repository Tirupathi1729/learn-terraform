resource "aws_instance" "instance" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  count = 1     #how many instances need to create
  security_groups = ["aws_security_group.Tf_SG.name"]

  tags = {
    Name = "2nd_instance"
  }
}

resource "aws_security_group" "Tf_SG" {
  name        = "security group  creation using terraform"
  description = "security group creation using terraform"
  vpc_id      = "vpc-095dcad0c8ac8c419"

  ingress {
    description      = "https"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  ingress {
    description      = "http"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  ingress {
    description      = "ssh"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "TF_SG"
  }
}