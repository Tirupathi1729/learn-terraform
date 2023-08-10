resource "aws_instance" "instance" {
  ami                       = data.aws_ami.ami.id
  instance_type             = var.instance_type
  vpc_security_group_ids    = var.security_groups

  tags = {
    Name = var.name
  }
}
resource "aws_route53_record" "record" {

  zone_id = var.zone_id
  name    = "${var.name}-dev.tirupathib74.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.instance.private_ip]

}
resource "null_resource" "ansible" {
  depends_on = [
    aws_route53_record.record
  ]
  provisioner "local-exec" {
    command = <<EOF
cd /home/centos/roboshop-ansible-practice
git pull
sleep 30
ansible-playbook -i ${var.name}-dev.tirupathib74.online, -e ansible_user=centos -e ansible_password=DevOps321 ${var.name}.yml
EOF

  }
}