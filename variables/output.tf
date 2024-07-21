# attribute refrence it will give all the information,output block is used to print the output of the resources in the terminal just terraform plan

# output "instance_info" {      
#   value = aws_instance.web
# }
# the above one by terraform apply you will get all info






# if you want any particular information like the below ones

output "instance_id" {
  value = aws_instance.web.id
}

output "public_ip" {
  value = aws_instance.web.public_ip
}

output "private_ip" {
  value = aws_instance.web.private_ip
}