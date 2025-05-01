variable "sg-name" {
  type = string
  default = "roboshop-all-aws"
}

variable "sg-description" {
  type = string
  default = "Allow TLS inbound traffic"
}

variable "inbound-from-port" {
  default = 0
}

variable "cidr_blocks" {
  type = list
  default = ["0.0.0.0/0"]
}


# Make sure to put default value in double quotes if it is a string type
# If it is number then no need to put ""
# If it is list must be in [], inside it must be in double qotes (or) CIDR blocks should be in list[] and inside it must in double qotes