resource "aws_instance" "instance" {
  ami = var.amid_id
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_group

  tags = {
    Name = "${var.server_name}-user"
  }
}
