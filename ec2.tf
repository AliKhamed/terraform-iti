resource "aws_instance" "bastion" {
  ami                         = var.ami
  instance_type               = var.instance_type
  key_name                    = aws_key_pair.mykeypair.key_name
  subnet_id                   = module.network.public_subnet1_id
  vpc_security_group_ids      = [aws_security_group.iti_securityGR.id]
  associate_public_ip_address = true

  root_block_device {
    delete_on_termination = true
  }

  tags = {
    Name = "iti-Bastion"
  }
}
resource "aws_instance" "application_instance" {
  #ami                         = "ami-052efd3df9dad4825"
  ami                         = var.ami
  instance_type               = var.instance_type
  key_name                    = aws_key_pair.mykeypair.key_name
  subnet_id                   = module.network.private_subnet1_id
  vpc_security_group_ids      = [aws_security_group.iti_securityGR2.id]
  associate_public_ip_address = true

  root_block_device {
    delete_on_termination = true
  }

  tags = {
    Name = "iti-application-instance"
  }
}