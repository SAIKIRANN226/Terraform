resource "aws_instance" "web" {    # it is web component if it is api then api component like that..
  ami           = "ami-0f3c7d07486cad139"   # this is devops-practice ami we can find it in AMI's-select public and then search 
  instance_type = "t2.micro"
  #vpc_security_group_ids = [aws_security_group.roboshopall.id]  # this is nothing but using secuirty group in the instance [] is list or if you are creating instances in vpc then use this,so that terraform will automatically use this depencines and create first SG
  tags = {
    Name = "saikiran_instance"  # what ever the name you give here instance will create with this name only,make sure key names should start capital "N"
  }
}                             





resource "aws_security_group" "roboshopall" {    # this name is just for terraform reference only
  name        = var.sg-name                      # this name is for aws so what ever you write here resources will be created with this name only
  description = var.description-name
  

  ingress {
    description      = "allow all traffic"
    from_port        = var.inbound-name   # 0 means allow all 
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = var.cidr-name   # []-->indicates list, list must be in double quotes, internet for cidr is 0.0.0.0/0
    
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
   
  }     # do not disturb egress coz egress is by default allow all

  tags = {
    Name = "Saikiran_SG"   # only this name will be showed 
  }
}

# when starting with flower brases then it is "map" normal one is "list"