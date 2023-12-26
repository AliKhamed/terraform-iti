/* Elastic IP for NAT */
resource "aws_eip" "nat_eip" {
  domain = "vpc"
  tags = {
    Name = "iti-eip"

  }

}
/* NAT */
resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.iti_public_subnet1.id

  tags = {
    Name = "iti-nat"

  }
}
