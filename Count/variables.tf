variable "instance-names" {
    type = list
    default = ["web","cart","catalogue","shipping","mysql","payment"]
}
variable "ami_id" {
    type = string
    default = "ami-0f3c7d07486cad139"
}
variable "zone_id" {
    type = string
    default = "Z05104061G7J749VWUD3O"
}
variable "domain_name" {
    type = string
    default = "saidevops.fun"
}