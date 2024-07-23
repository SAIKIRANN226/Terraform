resource "aws_instance" "web" {
  ami           = "ami-03265a0778a880afb" #devops-practice
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.roboshop-all.id] # this [ ] means list and this line taken from the line 11,terraform will automatically takecare of the dependencies,you can see here firt it will create sg and then ec2,no need to follow the sequence also, and this is also a output of security group beacsue we used .id to get output
  
  tags = {
    Name = "HelloTerraform"
  }
}

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
        #ipv6_cidr_blocks = ["::/0"]
    }

    tags = {
        Name = "roboshop-all-aws"
    }
}