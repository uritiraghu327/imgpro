resource "aws_instance" "ubuntu" {
    ami = "ami-084568db4383264d4"
    instance_type = "t2.micro"
  subnet_id = aws_subnet.subnet.id
  vpc_security_group_ids = [aws_default_security_group.sg.id]
  key_name = "AWS-KEYPAIR02"
  associate_public_ip_address = true
}