resource "aws_instance" "web" {   
  count = 5 # count.index is a special variable
  ami           =  var.ami_id
  instance_type = "t2.micro"
  tags = {
    Name = var.instance_names[count.index]
  }
}