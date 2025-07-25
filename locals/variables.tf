variable "isProd" {
  type = bool
  default = true # When you give isProd = false, it will create t2.small, when you give isProd = true then it will create t3.small
}

variable "ami_id" {
  default = "ami-03265a0778a880afb"
}

variable "zone_id" {
  default = "Z104317737D96UJVA7NEF"
}

variable "domain_name" {
  default = "daws76s.online"
}
