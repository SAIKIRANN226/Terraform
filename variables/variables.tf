# 1. command line
# 2. -var-file
# 3. terraform.tfvars
# 4. ENV variables
# If you dont find in any of the above then terraform will prompt for the value

variable "ami_id" {
  type = string
  default = "ami-0b4f379183e5706b9"
}

variable "instance_type" {
  default = "t2.micro"
  type = string
}

variable "tags" {
  type = map       
  default = {  # If default is starting from the flower brases then it is a map, this is the way to declare a map
    Name = "Hello Terraform"
    Project = "Roboshop"
    Environment = "DEV"
    Component = "Web"
    Terraform = "true"  # Means this ec2 is created using terraform
  }
}

variable "sg-name" {
  type = string
  default = "roboshop-all"  # If it is string then default value must be in double qotes ""
}

variable "sg-description" {
  type = string
  default = "allowing all ports"
}

variable "inbound-from-port" {
    type = number
    default = 0            # If it is a number then default value just number no need to put in ""
}

variable "cidr_blocks" {
  type = list
  default = ["0.0.0.0/0"]  # If it is list must be in [] inside it must be in qotes (or) CIDR blocks should be in list[] and inside it must in double qotes
}