# ec2_instance/main.tf
resource "aws_instance" "web1" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [var.security_group_id]
  subnet_id              = var.subnet_id
  associate_public_ip_address = var.associate_public_ip_address
  count                  = var.instance_count
  tags = {
    Name = "${var.instance_name}.${count.index + 1}"
  }
}

