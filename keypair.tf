resource "tls_private_key" "generate_key" {
  algorithm = "RSA"
}

resource "aws_key_pair" "mykeypair" {
  key_name   = "test-keypair"
  public_key = tls_private_key.generate_key.public_key_openssh
  tags = {
    Name = "test-keypair"
  }
}

