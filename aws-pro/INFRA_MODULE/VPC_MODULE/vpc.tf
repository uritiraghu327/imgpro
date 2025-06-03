resource "aws_vpc" "vpc" {
  cidr_block = var.vpc-ip

  tags = {
    Name = var.vpc_name
  }
}