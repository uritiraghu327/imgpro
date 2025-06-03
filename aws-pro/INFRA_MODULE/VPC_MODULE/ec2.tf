resource "aws_instance" "ubuntu" {
    ami = "ami-054d6a336762e438e"
    instance_type = "t2.micro"
  subnet_id = aws_subnet.subnet.id
  vpc_security_group_ids = [aws_default_security_group.sg.id]
  key_name = "AWS-KEYPAIR02"
  associate_public_ip_address = true
}
