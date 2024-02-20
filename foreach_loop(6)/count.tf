# foreach loop is to iterate the maps and conditions is to iterate the list
# to iterate list we use [count.index]
# tp iterate maps we use "for_each"


resource "aws_instance" "web" {   
  for_each = var.instance-names
  ami           =  var.ami_id
  instance_type = each.value
  tags = {
    Name = each.key
  }
}

resource "aws_route53_record" "www" {
  for_each = aws_instance.web
  zone_id = var.zone_id
  name    = "${each.key}.${var.domain_name}"  
  type    = "A"
  ttl     = 300
  records = [var.instance-names[count.index] == "web" ? aws_instance.web[count.index].public_ip : aws_instance.web[count.index].private_ip]
}


# output "instance_info" {
#    value = aws_instance.web
# }