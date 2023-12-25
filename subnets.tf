# ----------- create public subnet az1----------#

resource "aws_subnet" "iti_public_subnet1" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.public_subnet1_cidr
  availability_zone = "${var.regoin}a"

  tags = {
    Name = "public subnet"
  }
}
# ----------- create public subnet az2----------#

resource "aws_subnet" "iti_public_subnet2" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.public_subnet2_cidr
  availability_zone = "${var.regoin}b"

  tags = {
    Name = "public subnet"
  }
}

# ----------- create private subnet az1----------#

resource "aws_subnet" "iti_private_subnet1" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.private_subnet1_cidr
  availability_zone = "${var.regoin}a"

  tags = {
    Name = "private subnet"
  }
}
# ----------- create private subnet az2----------#

resource "aws_subnet" "iti_private_subnet2" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.private_subnet2_cidr
  availability_zone = "${var.regoin}b"

  tags = {
    Name = "private subnet"
  }
}