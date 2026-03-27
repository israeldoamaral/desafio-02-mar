resource "aws_security_group" "bia_dev" {
  name        = "bia-dev"
  description = "acesso do bia dev"
  vpc_id      = "vpc-0a0c51ea44597548d"
  # vpc_id      = aws_vpc.main.id

  tags = {
    Name = "sg_bia-dev"
  }
}

resource "aws_vpc_security_group_ingress_rule" "in_traffic_ipv4" {
  security_group_id = aws_security_group.bia_dev.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 3001
  ip_protocol       = "tcp"
  to_port           = 3001
}

resource "aws_vpc_security_group_egress_rule" "out_traffic_ipv4" {
  security_group_id = aws_security_group.bia_dev.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1"
}
