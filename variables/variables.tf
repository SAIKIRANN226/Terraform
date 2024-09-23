# 1. command line
# 2. -var-file
# 3. terraform.tfvars
# 4. ENV variables
# if you dont find in any of the above then terraform will prompt for the value

variable "ami_id" {
  type = string
  default = "ami-03265a0778a880afb"
}

variable "instance_type" {
  default = "t2.micro"
  type = string
}

variable "tags" {
  type = map       # If default is starting from the flower brases then it is map
  default = {
    Name = "Hello Terraform"
    Project = "Roboshop"
    Environment = "DEV"
    Component = "Web"
    Terraform = "true"  # means this ec2 is created using terraform
  }
}

variable "sg-name" {
  type = string
  default = "roboshop-all"  # if it string then default value must be in double qotes ""
}

variable "sg-description" {
  type = string
  default = "allowing all ports"
}

variable "inbound-from-port" {
    type = number
    default = 0            # if it is number then default value just number no need to put in ""
}

variable "cidr_blocks" {
  type = list
  default = ["0.0.0.0/0"]  # if it is list must be in [] inside it must be in qotes (or) CIDR blocks should be in list[] and inside it must in double qotes
}