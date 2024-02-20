data "aws_ami" "centos" {
    most_recent      = true
    owners           = ["973714476881"]
    
    
  filter {
    name   = "name"
    values = ["Centos-8-DevOps-Practice"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

data "aws_ami" "aws-linux-2" {
    most_recent      = true
    owners           = ["amazon"]
    
    
  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-*"]  # * means after name what ever new date 
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

data "aws_vpc" "default" {
    default = true
}