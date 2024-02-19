resource "aws_instance" "web" {   
  #count = 5 # count.index is a special variable
  count = length(var.instance-names)  # you may forget to update the count number so we use length
  ami           =  var.ami_id
  instance_type = var.instance-names[count.index] == "mongodb" || var.instance-names[count.index] == "mysql" ? "t3.small" : "t2.micro"
  tags = {
    Name = var.instance-names[count.index]
  }
}

resource "aws_route53_record" "www" {
  #count = 5
  count = length(var.instance-names)
  zone_id = var.zone_id
  name    = "${var.instance-names[count.index]}.${var.domain_name}"   # mixing variable and static text = interpolation
  type    = "A"
  ttl     = 300
  records = [var.instance-names[count.index] == "web" ? aws_instance.web[count.index].public_ip : aws_instance.web[count.index].private_ip]
}