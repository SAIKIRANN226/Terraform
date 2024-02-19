locals {
  instance_type = var.instance-names[count.index] == "mongodb" || var.instance-names[count.index] == "mysql" ? "t3.small" : "t2.micro"
  ip = [var.instance-names[count.index] == "web" ? aws_instance.web[count.index].public_ip : aws_instance.web[count.index].private_ip]
}