resource "aws_security_group" "roboshop-all" { 
    name        = "dynamic-demo"
    description = "dynamic-demo"

    dynamic ingress {  # In this example ingress block is repeating so we used word "dynamic" before ingress.
        for_each = var.ingress_rules
        content {   # Which content is repeating ? like below lines.
          description      = ingress.value["description"]
          from_port        = ingress.value["from_port"]
          to_port          = ingress.value["to_port"]
          protocol         = ingress.value["protocol"]
          cidr_blocks      = ingress.value["cidr_blocks"]
        }     
    }

    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
    }

    tags = {
        Name = "dynamic-demo-1"
    }
}