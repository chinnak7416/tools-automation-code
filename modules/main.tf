resource "aws_instance" "instance" {
  ami                    = data.aws_ami.ami.image_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [data.aws_security_group.selected.id]

  tags = {
    Name = var.tools_name
  }
}

resource "aws_route53_record" "record" {
  zone_id = var.zone_id
  name    = var.tools_name
  type    = "A"
  ttl     = 30
  records = [aws_instance.instance.private_ip]
}