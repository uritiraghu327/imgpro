resource "aws_subnet" "subnet" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.sub-ip

  tags = {
    Name = var.sub_name
  }
}