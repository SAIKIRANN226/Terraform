resource "aws_instance" "web" {   
  ami           =  var.ami_id
  instance_type = var.instance_type == mongodb ? "t3.medium" : "t2.micro"
}