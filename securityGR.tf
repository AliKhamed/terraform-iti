# ------------ security group for ssh -----------#
resource "aws_security_group" "iti_securityGR" {
  name        = "iti_securityGR"
  description = "security group for bastion server"
  vpc_id      = module.network.vpc_id
  tags = {
    Name = "iti_securityGR"
  }
}

# ----------------inbound tarffic ----------------#

# allow ssh
resource "aws_security_group_rule" "SG_inbound_allow_ssh" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"] # allow from anywhere
  security_group_id = aws_security_group.iti_securityGR.id
}
# ------------ security group for port 3000 -----------#
resource "aws_security_group" "iti_securityGR2" {
  name        = "iti_securityGR2"
  description = "security group for port 3000 "
  vpc_id      = module.network.vpc_id
  tags = {
    Name = "iti_securityGR_3000"
  }
}

# ----------------inbound tarffic ----------------#

# allow ssh
resource "aws_security_group_rule" "SG_inbound_allow_http" {
  type              = "ingress"
  from_port         = 3000
  to_port           = 3000
  protocol          = "tcp"
  cidr_blocks       = [var.vpc_cidr] # allow from vpc cider
  security_group_id = aws_security_group.iti_securityGR2.id
}