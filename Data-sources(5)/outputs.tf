output "ami_id" {
    value = data.aws_ami.centos.id
}
output "aws_ami_id" {
    value = data.aws_ami.aws-linux-2.id
}
output "vpc_info" {
    value = data.aws_vpc.default 
}


# so data-sources is useful to query the data from the provider aswell as to query the existing resources,from that information we can create other resources also