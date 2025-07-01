resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = local.instance_type
  tags = {
    Name = "locals" # It is just a name which reflects in the aws console, because we are practicing locals, so thats why we have given the instance name as locals.
  }
}
