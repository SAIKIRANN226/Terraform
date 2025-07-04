resource "aws_instance" "web" {
  ami           = "ami-0b4f379183e5706b9" # "Centos-8-DevOps-Practice" | devops-practice
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.roboshop-all.id] # This line is nothing but attaching the below created security_group to this instance by using this vpc_security_group_ids = [aws_security_group.roboshop-all.id]. This [ ] means list and this line taken from the line 14,terraform will automatically takecare of the dependencies, you can see here first it will create sg and then ec2, so no need to follow the sequence also, and this is also a output of security group because we used .id to get the output, line 4 is only used when there is a security group is created. If you dont write terraform script for security group then terraform will take default SG.
  tags = {
    Name = "HelloTerraform" # This name will only reflect in the aws console.
    Environemnt = "dev"
    Component = "web"
    Terraform = "true" # That means this instance is created using terraform.
    Project = "roboshop" 
  }
}

resource "aws_security_group" "roboshop-all" { # This is terraform name, for terraform reference only.
    name        = var.sg-name # This is for AWS.
    description = var.sg-description
    
    ingress {
        description      = "Allow All ports"
        from_port        = var.inbound-from-port # 0 means all ports.
        to_port          = 0 
        protocol         = "tcp"  # Transmission control protocol that allows applications and devices to exchange the data over network.
        cidr_blocks      = var.cidr_blocks
    }

    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
    }

    tags = {
        Name = "roboshop-all-aws" # This name will only reflect in the aws console.
    }
}


# Note:- Only Tags names will reflect in the aws console, so tags is very important.
