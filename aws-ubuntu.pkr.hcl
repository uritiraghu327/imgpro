packer {
  required_plugins {
    amazon = {
      version = ">= 1.2.8"
      source  = "github.com/hashicorp/amazon"
    }
  }
}

source "amazon-ebs" "ubuntu" {
  access_key                  = "AKIAX2SWBD6AGD3FP54O"
  secret_key                  = "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"
  vpc_id                      = "vpc-0aaa947c90d9c79d0"
  subnet_id                   = "subnet-03cadaac2a492c89c"
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
