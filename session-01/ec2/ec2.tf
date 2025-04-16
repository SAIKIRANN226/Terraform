resource "aws_instance" "web" {
  ami           = "ami-0b4f379183e5706b9" 
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.roboshop-all.id]
  tags = {
    Name = "HelloTerraform"
    Environemnt = "dev"
    Component = "web"
    Terraform = "true"
    Project = "roboshop"
  }
}

resource "aws_security_group" "roboshop-all" {  
    name        = var.sg-name 
    description = var.sg-description
    
    ingress {
        description      = "Allow All ports"
        from_port        = var.inbound-from-port  
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


# line 2 ---> devops-practice
# line 4 ---> This [ ] means list and this line taken from the line 14,terraform will automatically takecare of the dependencies,you can see here first it will create sg and then ec2,no need to follow the sequence also,and this is also a output of security group because we used .id to get output; line 4 is only used when there is a security group is created.if you dont write terraform script for security group then terraform will take default SG
# line 10 ---> That means this instance is created using terraform
# line 14 ---> This is terraform name, for terraform reference only
# line 15 ---> This is for AWS
# line 20 ---> 0 means all ports
# line 22 ---> Transmission control protocol that allows applications and devices to exchange the data over network