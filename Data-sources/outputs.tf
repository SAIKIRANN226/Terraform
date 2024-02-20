output "ami_id" {
    value = data.aws_ami.centos.id
}
output "aws_ami_id" {
    value = data.aws_ami.aws-linux-2.id
}