resource "aws_security_group" "roboshop-all" { #this is terraform name, for terraform reference only
    name        = var.sg-name # this is for AWS
    description = var.sg-description

    ingress {
        description      = "Allow All ports"
        from_port        = var.inbound-from-port # 0 means all ports
        to_port          = 0 
        protocol         = "tcp"
        cidr_blocks      = var.cidr_blocks
    }

    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
    }

    tags = {
        Name = "roboshop-all-aws"
    }
}