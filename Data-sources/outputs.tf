output "ami_id" {
    value = data.aws_ami.centos.id
}
output "linux_ami_id" {
    value = data.linux_aws_ami.linux.id
}