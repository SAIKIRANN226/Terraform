locals {
  name = "sivakumar"
  training = "terraform"
  instance_type = var.isProd ? "t3.small" : "t2.micro"
}



# Then how to call a local ? ---> "local.name" || "local.training || ""local.instance_type"