variable "sg_name" {
    type = string      # here type is not mandatory, terraform will automatically take it, just giving for my practice
    default = "megacitySG"
}

variable "description_name" {
    type = string
    default = "Allow all traffic for practice"
}

variable "inbound_name" {
    type = number
    default = 0
}

variable "cidr_name" {
    type = list 
    default = ["0.0.0.0/0"] # must be in double qoutes in the list
}