resource "aws_instance" "web" {
  count = length(var.instance_names) # Length function will calculate the list automatically
  ami           = var.ami_id
  instance_type = var.instance_names[count.index] == "mongodb" || var.instance_names[count.index] == "mysql" || var.instance_names[count.index] == "shipping" ? "t3.small" : "t2.micro"
  tags = {
    Name = var.instance_names[count.index]
  }
}

resource "aws_route53_record" "www" {
  count = length(var.instance_names)
  zone_id = var.zone_id # Zone id can found in the hosted zones
  name    = "${var.instance_names[count.index]}.${var.domain_name}" # Interpolation (mixing variable + static text) before this delete old records if exists
  type    = "A"
  ttl     = 1
  records = [var.instance_names[count.index] == "web" ? aws_instance.web[count.index].public_ip : aws_instance.web[count.index].private_ip]
}



# count = 11 ---> count.index is a special variable given by terraform, because it was creating instances with same names for that we use count.index, why we are not using count then ? because here also sometimes we forget to give the correct number so thats why we use length function given by terraform