packer {
  required_plugins {
    amazon = {
      version = ">= 1.2.8"
      source  = "github.com/hashicorp/amazon"
    }
  }
}

source "amazon-ebs" "ubuntu" {
  access_key                  = "******************"
  secret_key                  = "******************"
  vpc_id                      = "******************"
  subnet_id                   = "*******************"
  ami_name                    = "packer-ubsubnet-03cadaac2a492c89cuntu-{{timestamp}}"
  instance_type               = "t2.micro"
  region                      = "us-east-1"
  associate_public_ip_address = true
  source_ami_filter {
    filters = {
      name                = "ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"
      root-device-type    = "ebs"
      virtualization-type = "hvm"
    }
    most_recent = true
    owners      = ["099720109477"]
  }
  ssh_username = "ubuntu"
}

build {
  name = "learn-packer"
  sources = [
  "source.amazon-ebs.ubuntu"]
  provisioner "shell" {
    inline = [
      "sudo apt-get update",
      "sudo apt-get install nginx -y"
    ]
  }

}
