resource "aws_security_group" "roboshopall" {  
  name        = var.sg_name                    
  description = var.description_name
  

  ingress {
    description      = "allow all traffic"
    from_port        = var.inbound_name   
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = var.cidr_name 
    
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
   
  }    

  tags = {
    Name = "Saikiran_SG"  
  }
}
