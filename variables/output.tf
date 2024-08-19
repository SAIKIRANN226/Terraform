# attribute refrence ---> it will give all the information,output block is used to print the output of the resources in the terminal just terraform plan
# where this output will be usefull? is used to create another resource taking input from one resource like giving the output of the ec2 instances to the input to the route53 records

# output "instance_info" {      
#   value = aws_instance.web
# }
# the above one by terraform apply you will get complete information on the terminal thats why we commented this






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