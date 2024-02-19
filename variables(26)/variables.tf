variable "ami_id" {
    type = string
    default = "ami-0f3c7d07486cad139" 
}
variable "instance_type" {
    type = string
    default = "t2.micro"
}
variable "tags" {
    type = map 
    default = {
        Name = "sai_sever"
        Project = "roboshop"
        Environment = "Dev"
        Component = "web"
        Terraform = "true"
    }
}
variable "sg_name" {
    type = string      
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
    default = ["0.0.0.0/0"] 
}
