data "aws_ami" "centos8"{
    owners = ["973714476881"]
    most_recent      = true

    filter {
        name   = "name"
        values = ["Centos-8-DevOps-Practice"]  # Nothing but name of ami
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

data "aws_ami" "aws-linux-2"{
    owners = ["amazon"]
    most_recent      = true

    filter {
        name   = "name"
        values = ["amzn2-ami-kernel-5.10-hvm-*"]   # If you put -* after hvm when ever there is a patch released, automatically it will get it dynamically.
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